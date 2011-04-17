package com.reinid.domain.listing.payment

class ListingPayment {

	String firstName
	String lastName
	String company
	String address1
	String address2
	String city
	String state
	String zipcode
	String country
	String phonenumber
	String contactEmail
	String specialNotes
	
	Date dateCreated
	Date lastUpdated
	
	String creditCardNumber
	String expirationMonth
	String expirationYear
	Date expirationDate
	String cvvCode
	
	Float amount
	String listingPaymentType
	
    static constraints = {
		creditCardNumber creditCard : true
		expirationMonth blank : false
		expirationYear blank : false
		cvvCode blank : false
		amount blank : false, scale : 2
		listingPaymentType blank : false
    }
}

