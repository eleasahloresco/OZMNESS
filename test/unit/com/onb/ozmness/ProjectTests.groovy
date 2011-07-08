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
        mockDomain(Project, [project])
    }

    protected void tearDown() {
        super.tearDown()
    }


    void testBlank() {
        println "I was here"
    }

    void testCanFetchProjectName() {
        assertEquals "Invalid project name", "Employee Rating System", project.name
    }

    void testCanFetchTechLead() {
        assertEquals "invalid tech lead" , project.lead, techLead
    }

    void testCanFetchTechnologiesUsedInProject() {
        assertEquals "invalid no of technologies used", 2, project.technologies.size()
        assertTrue "html not found in technologies used", project.technologies.contains(css)
        assertTrue "css not found in technologies used", project.technologies.contains(html)
    }

    void testCanFetchEmployeesInProject() {
        def dev1 = new Employee()
        dev1.firstName = "Linus";
        dev1.lastName = "Torvalds";

        def dev2 = new Employee()
        dev2.firstName = "James";
        dev2.lastName = "Gosling";

        project.addToEmployees(dev1)
        project.addToEmployees(dev2)
        project.save()
        assertEquals "invalid employee count", 2, project.employees.size()

        def employeeList = project.employees as List
        assertTrue employeeList.contains(dev1)
        assertTrue employeeList.contains(dev2)
   }
}
