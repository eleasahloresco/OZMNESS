package com.onb.ozmness

class Project {
    def name
    String name
    Employee lead

    static belongsTo = Employee
    static hasMany = [technologies : Technology, employees:Employee]

    static constraints = {
        lead nullable:false, blank:false
        name nullable:false, blank:false
    }
}
