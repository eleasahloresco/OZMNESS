package com.onb.ozmness

class SaveAllService {

    static transactional = true
    def springSecurityService
    def saveAll(params) {
	def techIds = params.technology
	def technologies = []
	for(def id : techIds){
		technologies.add(Technology.findById(id))		
	}
	def values = params.value	
	def comments = params.comment
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
		rating.save()
		}
	}		

}
