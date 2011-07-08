package com.onb.ozmness

class Rating {
    
    def value = 1..3
    String comment
    Date dateCreated
    Employee creator
    Employee rated
    Technology technology
    static constraints = {
    }
}
