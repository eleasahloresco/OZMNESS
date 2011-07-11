package com.onb.ozmness

class Employee extends User {

    String firstName
    String lastName
    Employee mentor
    EmployeePosition position

    //static belongsTo = Project
    static hasMany = [projects: Project]

    static constraints = {
    }

    @Override
    boolean equals (Object o) {
        (o instanceof Employee) &&
        (this.firstName  == o.firstName) &&
        (this.lastName == o.lastName)
        // TODO
    }

}
