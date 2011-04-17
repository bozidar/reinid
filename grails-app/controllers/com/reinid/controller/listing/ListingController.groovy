package com.reinid.controller.listing

import com.reinid.domain.listing.Listing;
import com.reinid.domain.listing.agent.ListingAgentCompensation;
import com.reinid.domain.listing.agent.ListingAgentRequestTerms;
import com.reinid.domain.listing.media.ListingMedia;
import com.reinid.domain.listing.payment.ListingPayment 
import com.reinid.domain.setup.Address 
import com.reinid.domain.setup.PropertyType;
import com.reinid.domain.setup.RealEstateAgency;

class ListingController {
	
	def index = { }
	
	def newlisting = {
		Listing listing = new Listing()
		session["listing"] = listing		
		render view:'listingtypeselection'
	}
	
	def listingtypeselect = {
		Listing listing = session["listing"]
		listing.properties = params
		listing.propertyType = PropertyType.get(params.propertyTypeOption)
		session["listing"] = listing		
		
		if (listing.propertyListed) {
			render view:'existinglistingdetails', model : [listingInstance: listing]
		} else {
			render view:'listingdetailbasic', model : [listingInstance: listing]
		}
	}
	
	def existinglistingdetail = {
		Listing listing = session["listing"]
		listing.properties = params
		listing.listedWithAgency = RealEstateAgency.get(params.listedWithAgencyOption)
		session["listing"] = listing
		render view:'listingdetailbasic', model : [listingInstance: listing]
	}
	
	def listingdetailbasicrequest = {
		Listing listing = session["listing"]
		Address address = new Address(params)
		listing.listingAddress = address
		listing.properties = params
		
		if (!listing.listingAgentCompensation) {
			ListingAgentCompensation listingAgentCompensation = new ListingAgentCompensation()
			listingAgentCompensation.realEstateAgentCompensationCommissionRate = 7.0f
			listingAgentCompensation.realEstateAgentCompensationCommissionCalculatedAmount = listing.listingPrice * ((listingAgentCompensation.realEstateAgentCompensationCommissionRate)/100)
			listing.listingAgentCompensation = listingAgentCompensation
		}
		
		session["listing"] = listing
		render view:'listingdetailextended', model : [listingInstance: listing]
	}
	
	def listingdetailextendedrequest = {
		Listing listing = session["listing"]
		listing.properties = params
		session["listing"] = listing
		println "$listing"
		render view:'listingdetailmedia', model : [listingInstance: listing]
	}
	
	def listingdetailmediarequest = {
		println params
		Listing listing = session["listing"]
		ListingMedia listingMedia = new ListingMedia()
		listingMedia.properties = params
		listing.listingMedia = listingMedia
		session["listing"] = listing
		
		if(params.anotherfile) {
			render view:'listingdetailmedia', model : [listingInstance: listing]
		} else {
			render view:'realestateagentrequest', model : [listingInstance: listing]
		}
	}
	
	def realestateagentrequest = {
		Listing listing = session["listing"]
		ListingAgentRequestTerms listingAgentRequest = new ListingAgentRequestTerms()
		listingAgentRequest.realEstateAgentRequested = "Yes".equalsIgnoreCase(params.realEstateAgentRequest)
		listing.listingAgentRequest = listingAgentRequest 
		session["listing"] = listing
		if (listingAgentRequest.realEstateAgentRequested) {
			render view:'realestateagentcapacity', model : [listingInstance: listing]
		} else {
			render view:'realestateagentcommissionmoneytobuyer', model : [listingInstance: listing]
		}
	}
	
	def realestateagentcommissiontobuyerrequest = {
		Listing listing = session["listing"]
		listing.listingAgentRequest.properties = params
		session["listing"] = listing
		render view:'realestateagentcommission', model : [listingInstance: listing]
	}
	
	def realestateagentcapacityrequest = {
		Listing listing = session["listing"]
		listing.listingAgentRequest.properties = params
		session["listing"] = listing
		if ("Full Service".equalsIgnoreCase(listing.listingAgentRequest.realEstateAgentCapacity)) {
			render view:'realestateagentcommission', model : [listingInstance: listing]
		} else {
			render view:'realestateagentlimitedrole', model : [listingInstance: listing]
		}
	}
	
	def realestateagentlimitedrolerequest = {
		Listing listing = session["listing"]
		listing.listingAgentRequest.properties = params
		session["listing"] = listing
		render view:'realestateagentcommission', model : [listingInstance: listing]
	}
	
	def realestateagentcommissionrequest = {
		Listing listing = session["listing"]
		listing.properties = params
		ListingAgentCompensation listingAgentCompensation = new ListingAgentCompensation()
		listing.listingAgentCompensation = listingAgentCompensation
		listing.listingAgentCompensation.properties = params
		session["listing"] = listing
		render view:'realestateagentshouldberealtor', model : [listingInstance: listing]
	}
	
	def realestateagentshouldberealtorrequest = {
		Listing listing = session["listing"]
		listing.listingAgentRequest.realEstateAgentShouldBeRealtor = "Yes".equalsIgnoreCase(params.realEstateAgentShouldBeRealtor)
		session["listing"] = listing
		render view:'realestatebrokerage', model : [listingInstance: listing]
	}
	
	def realestatebrokeragerequest = {
		Listing listing = session["listing"]
		listing.properties = params
		listing.listingAgentRequest.realEstateExperienceSelection = listing.propertyType
		println ">>>>>> ${listing.listingAgentRequest.realEstateExperienceSelection}"
		session["listing"] = listing
		render view:'realestateagentexperienceselling', model : [listingInstance: listing]
	}
	
	def realestateagentexperiencesellingrequest = {
		Listing listing = session["listing"]
		listing.listingAgentRequest.properties = params
		session["listing"] = listing
		render view:'realestateagentfullcommission', model : [listingInstance: listing]
	}
	
	def realestateagentfullcommissionrequest = {		
		Listing listing = session["listing"]
		listing.listingAgentRequest.properties = params
		session["listing"] = listing
		render view:'realestateagentadditionalinfo', model : [listingInstance: listing]
	}
	
	def realestateagentadditionalinforequest = {
		Listing listing = session["listing"]
		listing.listingAgentRequest.properties = params
		session["listing"] = listing
		if ("Yes".equals(params.realEstateAgentMustProfessionalDesignations)) {
			render view:'realestateagentprofessionaldesignations', model : [listingInstance: listing]
		} else {
			render view:'realestateagentnonaffiliatedservices', model : [listingInstance: listing]
		}
	}
	
	def realestateagentprofessionaldesignationsrequest = {
		Listing listing = session["listing"]		
		listing.listingAgentRequest.properties = params
		session["listing"] = listing
		render view:'realestateagentnonaffiliatedservices', model : [listingInstance: listing]
	}
	
	def realestateagentnonaffiliatedservicesrequest = {
		Listing listing = session["listing"]
		listing.listingAgentRequest.properties = params
		session["listing"] = listing
		render view:'closingcosts', model : [listingInstance: listing]
	}
	
	def closingcostsrequest = {
		Listing listing = session["listing"]
		listing.properties = params
		ListingPayment listingPayment = listing.listingPayment ?: new ListingPayment()
		listing.listingPayment = listingPayment
		session["listing"] = listing
		render view:'newlistingpayment', model : [listingInstance: listing]
	}
	
	def newlistingpaymentrequest = {
		Listing listing = session["listing"]
		ListingPayment listingPayment = listing.listingPayment ?: new ListingPayment()
		listingPayment.properties = params
		listing.listingPayment = listingPayment
		session["listing"] = listing
		render view:'newlistingpayment', model : [listingInstance: listing]
	}
}
