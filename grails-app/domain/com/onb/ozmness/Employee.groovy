package com.onb.ozmness

class Employee extends User {

    String firstName
    String lastName
    Employee mentor
    EmployeePosition position

    //static belongsTo = Project
    static hasMany = [projects: Project]

    static constraints = {
	mentor		nullable: true, blank: true
	position	nullable: false, blank: false
	firstName	nullable: false, blank: false
	lastName	nullable: false, blank: false
    }

    @Override
    boolean equals (Object o) {
        (o instanceof Employee) &&
        (this.firstName  == o.firstName) &&
        (this.lastName == o.lastName)
        // TODO
    }

	String toString(){
		firstName + " " + lastName	
	}

}
