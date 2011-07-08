package com.onb.ozmness

class Project {
    
    def name
    Employee lead
    static hasMany = [technologies : Technology]

    static constraints = {
    }
}
