package com.onb.ozmness

class Rating {

    Integer value
    String comment
    Date dateCreated
    Employee creator
    Employee rated
    Technology technology

    static constraints = {
        value 		nullable: false, range: 1..3
        comment		nullable: true
        creator		nullable: false
        rated		nullable: false
        technology	nullable: false
    }

}
