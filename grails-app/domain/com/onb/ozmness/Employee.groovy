package com.onb.ozmness

class Employee extends User{
    
    static hasMany =[projects:Project]
    Employee mentor
    EmployeePosition position
    static constraints = {
    }
}
