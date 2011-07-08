package com.onb.ozmness

class Employee extends User {

    def firstName
    def lastName
    static hasMany = [projects:Project]
    Employee mentor
    EmployeePosition position

    static constraints = {
    }

    /*
    @Override
    int hashCode() {
        // TODO
        //"[$name][$type]".hashCode()
        1
    }
    */

    @Override
    boolean equals (Object o) {
        (o instanceof Employee) &&
        (this.firstName  == o.firstName) &&
        (this.lastName == o.lastName)
        // TODO
    }

}
