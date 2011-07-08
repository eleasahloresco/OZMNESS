package com.onb.ozmness

import grails.test.*

class EmployeeTests extends GrailsUnitTestCase {

    def employee = new Employee()

    protected void setUp() {
        employee.mentor = null
        employee.position = null
        employee.firstName = "John"
        employee.lastName = "Doe"
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testCanFetchEmployeeProjects() {
        def proj1 = new Project()
        proj1.name = "Linux"
        employee.addToProjects(proj1)
        employee.save()
println employee
println proj1

/*
        def proj2 = new Project()
        proj2.name = "Windows"
        employee.addToProjects(proj2)

        employee.save(flush:true)
        assertEquals "Invalid number of projects", 2, employee.projects.size()
*/
    }

    void testCanFetchMentor() {
    }

    void testCanFetchPosition() {
    }

    void testCanFetchEmployeeRatings() {
    }
}
