package com.reinid.domain.listing

import com.reinid.domain.listing.agent.ListingAgentCompensation 
import com.reinid.domain.listing.agent.ListingAgentRequestTerms;
import com.reinid.domain.listing.media.ListingMedia;
import com.reinid.domain.listing.payment.ListingPayment 
import com.reinid.domain.setup.Address 
import com.reinid.domain.setup.PropertyType 
import com.reinid.domain.setup.RealEstateAgency 
import org.apache.commons.lang.builder.ToStringBuilder 
import org.apache.commons.lang.builder.ToStringStyle 

class Listing implements Serializable {
	
	Integer listingID
	Address listingAddress	
	String listingType
	PropertyType propertyType
	String propertyTypeMain
	
	String listingStatus 
	BigDecimal listingPrice
	Integer yearBuilt
	Integer numberOfBedrooms
	Integer numberOfBathrooms
	Integer numberOfHalfBedrooms
	Integer numberOfHalfBathrooms
	BigDecimal lotSize
	String lotSizeUnits
	BigDecimal squareFootage
	String remarks
	
	BigDecimal estimatedPropertyTax
	BigDecimal estimatedMortgage // calculated 
	
	ListingMedia listingMedia	
	
	Boolean propertyListed
	RealEstateAgency listedWithAgency
	Date listingExpirationDate
	boolean propertyListedExpirationContactAfter
	
	ListingAgentRequestTerms listingAgentRequest
	ListingAgentCompensation listingAgentCompensation
	
	boolean realEstateAgentShouldBeRealtor
	String realEstateBrokerageSelection	
	String realEstateAgentBrokerageHouseName
	
	String closingCostsPaidBy
	String closingCostsOtherDescription
	String contactBy
	
	ListingPayment listingPayment
	
    static constraints = {
		listingPrice scale:2
		listingType nullable:false, inList:['Sell', 'Lease']
		propertyType nullable: false
		realEstateBrokerageSelection inList : ['Established', 'Independent', 'No Preference']
		closingCostsPaidBy inList : ['Listing_ClosingPaidBySelectionBuyer', 'Listing_ClosingPaidBySelectionSeller', 'Listing_ClosingPaidBySelectionOther']
		contactBy inList : ['Listing_ContactBySelectionEmail', 'Listing_ContactBySelectionPhone', 'Listing_ContactBySelectionInPerson', 'Listing_ContactBySelectionFacebook', 'Listing_ContactBySelectionDoNotContact']
    }
	
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE)
	}
}

