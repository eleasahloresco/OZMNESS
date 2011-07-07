package com.onb.ozmness

class EmployeePosition {

   String name
   static hasMany = [ratings:Rating]
   static constraints = {
    }
}
