package com.reinid.controller.security

import com.reinid.security.User 

class RegisterController {
	def springSecurityService
	
	def index = {
	}
	
	def newuser = {
		def userInstance = new User(params)
		userInstance.enabled = true
		if (userInstance?.password?.size() > 5) {
			userInstance.password = springSecurityService.encodePassword(userInstance.password)
		}
		if (userInstance.save(flush: true)) {
			flash.message = "${message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])}"
			redirect(controller:'login', action: "auth")
		}
		else {
			userInstance.password = ""
			render(view: "index", model: [userInstance: userInstance])
		}
	}
}
