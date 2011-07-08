package com.onb.ozmness

import grails.test.*

class EmployeePositionTests extends GrailsUnitTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testAddingEmployeePosition() {
	def employeePosition = new EmployeePosition(name:"Junior") 
	mockDomain(EmployeePosition,[employeePosition]);
	assertEquals "Junior", employeePosition.name
	
    }
}
