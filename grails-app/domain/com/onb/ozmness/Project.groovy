package com.onb.ozmness

class Project {

    def name
    Employee lead

    static belongsTo = Employee
    static hasMany = [technologies : Technology, employees:Employee]

    static constraints = {
    }
}
