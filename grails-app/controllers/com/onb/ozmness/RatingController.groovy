package com.onb.ozmness

class RatingController {
    	def springSecurityService

        def scaffold = true

	def showRatingWizard = {
		def user = springSecurityService.currentUser
		
		if (user == null) {
			return;
		}
		def mentees = Employee.findAllByMentor(user)
		def projects = Project.findAllByLead(user) as List	 
		return [mentees: mentees, projects: projects, user: user]
	}

	def saveAll = {
		
		//def ratingInstances = []
		def techIds = params.get("technology")
		def technologies = []
		for(def id : techIds){
			technologies.add(Technology.findById(id))		
		}
		def values = params.value	
		def comments = params.get("comment")
		def creator = springSecurityService.currentUser
		def rated = Employee.findById(Long.parseLong(params.get("ratedId")))	
		
		Rating rating
		for(Integer i = 0 ; i < technologies.size() ; i++){			
			rating = new Rating()
			rating.technology = technologies[i]	
			rating.value =  Integer.parseInt(values[i])
			rating.comment = comments[i]
			rating.creator = creator
			rating.rated = rated
			if(!rating.save()){
				rating.errors.each {
					println it
				}
			}
		}		
		redirect(action:"showRatingWizard")

	}


}
