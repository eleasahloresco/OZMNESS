package com.onb.ozmness

class EmployeePosition {

   String name

   static constraints = {
	name(nullable:false, blank:false, unique:true)
    }
	
	String toString(){
		name	
	}
}
