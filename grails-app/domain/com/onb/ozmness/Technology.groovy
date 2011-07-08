package com.onb.ozmness

class Technology {

    Technology parentTechnology
   String name
   static constraints = {
        parentTechnology nullable:true
        name blank:false, nullable:false, unique:true
    }
}
