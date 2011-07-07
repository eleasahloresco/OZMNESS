class BootStrap {
	def springSecurityService
	def init = { servletContext ->
		def roles = [:]
		def users = [:]
		roles.admin = Role.findByAuthority("ROLE_ADMIN") ?: \
			new Role(authority: "ROLE_ADMIN").save()
		users.admin = User.findByUsername('admin') ?: \
			new User(username: 'admin',
			password: springSecurityService.encodePassword('admin'), \
			enabled: true, \
			accountExpired:false, \
			accountLocked: false, \
			passwordExpired: false).save()
		UserRole.create( users.admin, roles.admin )
		
	roles.admin = Role.findByAuthority("ROLE_DEV") ?: \
			new Role(authority: "ROLE_DEV").save()
		users.admin = User.findByUsername('dev') ?: \
			new User(username: 'dev',
			password: springSecurityService.encodePassword('dev'), \
			enabled: true, \
			accountExpired:false, \
			accountLocked: false, \
			passwordExpired: false).save()
		UserRole.create( users.dev, roles.dev )
	}
	
	def destroy = {
	}
}
