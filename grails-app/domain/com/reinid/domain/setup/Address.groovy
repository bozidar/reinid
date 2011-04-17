package com.reinid.domain.setup

import java.io.Serializable;

class Address implements Serializable {

	String address1
	String address2
	String city
	String state
	String zipcode
	String country
	String subdivision
	String county
	
    static constraints = {
    }
}
