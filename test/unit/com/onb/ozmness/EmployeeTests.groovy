package com.onb.ozmness

import grails.test.*

class EmployeeTests extends GrailsUnitTestCase {

    def employee = new Employee()

    protected void setUp() {
        super.setUp()
        employee.mentor = null
        employee.position = null
        employee.firstName = "John"
        employee.lastName = "Doe"
        mockDomain(Employee, [employee])
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testCanAddProjectToEmployee() {
        def proj1 = new Project()
        proj1.name = "Linux"
        employee.addToProjects(proj1)
        assertTrue employee.projects.contains(proj1)
    }

    void testCanFetchEmployeeProjects() {
    }

    void testCanFetchMentor() {
    }

    void testCanFetchPosition() {
    }

    void testCanFetchEmployeeRatings() {
    }
}
