package com.reinid.domain.setup

import java.io.Serializable;

class PropertyType implements Serializable {

	String name
	
    static constraints = {
		name blank:false, unique : true
    }
	
	public String toString() {
		name
	}
}

