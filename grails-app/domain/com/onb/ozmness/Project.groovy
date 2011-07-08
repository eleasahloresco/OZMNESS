package com.onb.ozmness

class Project {

    String name
    Employee lead
    static hasMany = [technologies : Technology]

    static constraints = {
        lead nullable:false, blank:false
        name nullable:false, blank:false
    }
}
