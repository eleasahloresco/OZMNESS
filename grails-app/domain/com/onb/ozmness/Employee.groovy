package com.onb.ozmness

class Employee extends User {

    String firstName
    String lastName
    Employee mentor
    EmployeePosition position

    static hasMany = [projects: Project]

    static constraints = {
        mentor		nullable: true, blank: true
        position	nullable: false, blank: false
        firstName	nullable: false, blank: false
        lastName	nullable: false, blank: false
    }

    String toString(){
	firstName + " " + lastName	
    }


}
