package com.reinid.security

import java.util.Date;

class User {

	String username
	String password
	String firstName
	String lastName
	String company
	String title
	String email
	String phone
	
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	Date dateCreated
	Date lastUpdated

	static constraints = {
		username blank: false, unique: true, minSize:4
		password blank: false, minSize:6
		firstName blank : false, minSize:2
		lastName blank : false, minSize:2
		title blank : true, nullable:true
		company blank : true, nullable:true
		email blank : true, nullable:true, email:true
		phone blank : true, nullable:true
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}
}
