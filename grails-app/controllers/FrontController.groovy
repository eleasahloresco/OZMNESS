import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils

class FrontController {
    /**
	 * Dependency injection for the springSecurityService.
	 */
	def springSecurityService

	/**
	 * Default action; redirects to 'defaultTargetUrl' if logged in, /login/auth otherwise.
	 */
	def index = {
		if (springSecurityService.isLoggedIn()) {
            if (SpringSecurityUtils.ifAllGranted("ROLE_ADMIN")) {
                forward controller:"front", action:"adminIndex"
            } else {
                forward controller:"employee", action:"userDashboard"
            }
        }
	}

    def adminIndex = {}
}
