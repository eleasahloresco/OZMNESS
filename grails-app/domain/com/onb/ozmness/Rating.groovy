package com.onb.ozmness

class Rating {
    
    Integer value
    String comment
    Date dateOfCreation
    Employee creator
    Employee rated
    Technology technology

    static constraints = {
	dateOfCreation	display: false
	value 		nullable: false, range: 1..3
	comment		nullable: false
	creator		nullable: false
	rated		nullable: false
	technology	nullable: false
    }
}
