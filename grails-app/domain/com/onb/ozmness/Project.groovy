package com.onb.ozmness

class Project {
    
    String name
    Employee lead
    static hasMany = [technologies : Technology]
    static constraints = {
    }
}
