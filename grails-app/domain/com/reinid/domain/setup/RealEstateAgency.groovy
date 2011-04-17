package com.reinid.domain.setup

import java.io.Serializable;

class RealEstateAgency implements Serializable {
	
	String name
	
	static constraints = {
		name blank:false, unique : true
	}
	
	public String toString() {
		name
	}
}

