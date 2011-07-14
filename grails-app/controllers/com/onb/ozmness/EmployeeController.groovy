package com.onb.ozmness

class EmployeeController {

    def springSecurityService

    def scaffold = true

    def save = {
	params.password = springSecurityService.encodePassword(params.password)
        def employeeInstance = new Employee(params)

        if (employeeInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'employee.label', default: 'Employee'), employeeInstance.toString()])}"
            redirect(action: "show", id: employeeInstance.id)
        }
        else {
            render(view: "create", model: [employeeInstance: employeeInstance])
        }

	def role = Role.findByAuthority("ROLE_DEV")
	def userRole = new UserRole()
	userRole.create(employeeInstance, role, true)
    }

    def userDashboard = {
        def employee = springSecurityService.currentUser
        def projects = employee.projects as List
        def ratings = Rating.findAllByRated(employee) as List
        return [employee:employee, projects:projects, ratings:ratings]
     }

    def employeeDashboard = {
        def employee = Employee.findById(params.id)
        if (employee != null)
        {
            def projects = employee.projects as List
            def ratings = Rating.findAllByRated(employee) as List
            def technologies = Technology.findAllByParentIsNotNull()
            return [employee:employee, projects:projects, ratings:ratings, technologies: technologies]
        }
        else
        {
            flash.message = "employee not found"
        }
    }

}
