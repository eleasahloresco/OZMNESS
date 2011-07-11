package com.onb.ozmness

class Project {
    String name
    Employee lead

    static belongsTo = Employee
    static hasMany = [technologies : Technology, employees:Employee]

    static constraints = {
        lead nullable:false, blank:false
        name nullable:false, blank:false
    }


	String toString(){
		name	
	}

}
