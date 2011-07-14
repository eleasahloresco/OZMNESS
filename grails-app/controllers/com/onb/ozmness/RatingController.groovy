package com.onb.ozmness

class RatingController {

    	def springSecurityService
	def saveAllService

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
		def ratings = saveAllService.serviceMethod(params) as List
		//def ratingInstances = []
		
		redirect(action:"showRatingWizard")

	}


}
