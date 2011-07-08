package com.onb.ozmness

import grails.test.*

class ProjectTests extends GrailsUnitTestCase {

    def project = new Project()
    def techLead = new Employee()
    def html = new Technology()
    def css = new Technology()

    protected void setUp() {
        project.name = "Employee Rating System"
        techLead.firstName = "John"
        techLead.lastName = "Doe"
        techLead.projects = []
        techLead.mentor = null
        techLead.position = null
        project.lead = techLead
        css.name = "css"
        css.parent = null
        html.name = "html"
        html.parent = null
        project.technologies = [css, html]
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testCanFetchProjectName() {
        mockDomain(Project, [project])
        assertEquals "Invalid project name", "Employee Rating System", project.name
    }

    void testCanFetchTechLead() {
        mockDomain(Project, [project])
        assertEquals "invalid tech lead" , project.lead, techLead
    }

    /*
    void testCanFetchEmployeesInProject() {
       mockDomain(Project, [project])
       project.
    }
    */

    void testCanFetchTechnologiesUsedInProject() {

    }
}
