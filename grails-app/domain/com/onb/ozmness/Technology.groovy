package com.onb.ozmness

class Technology {

    String name
    Technology parent

    static constraints = {
        parent nullable:true
        name blank:false, nullable:false, unique:true
    }

    String toString(){
	name	
    }

}
