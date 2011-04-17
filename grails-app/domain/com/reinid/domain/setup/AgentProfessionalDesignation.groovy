package com.reinid.domain.setup

class AgentProfessionalDesignation {

	String code
    String name
	
    static constraints = {
		code blank:false, unique : true
		name blank:false, unique : true
    }
	
	public String toString() {
		code + ", " + name
	}
}
