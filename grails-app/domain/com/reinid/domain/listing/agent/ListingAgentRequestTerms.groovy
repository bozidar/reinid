package com.reinid.domain.listing.agent

import com.reinid.domain.setup.AgentProfessionalDesignation;
import com.reinid.domain.setup.PropertyType 
import java.io.Serializable;
import org.apache.commons.lang.builder.ToStringBuilder 
import org.apache.commons.lang.builder.ToStringStyle 

class ListingAgentRequestTerms implements Serializable {
	
	boolean realEstateAgentRequested	
	Date realEstateAgentNeededRemindLaterDate
	
	String realEstateAgentCapacity
	String realEstateAgentLimitedRoleType
	String realEstateAgentLimitedRoleTypeDescription		
	
	String realEstateAgentNotNeededMoneySelection
	String realEstateAgentNotNeededAmountSelection
	Float realEstateAgentNotNeededAmountOther
	
	boolean realEstateAgentShouldBeRealtor
	boolean realEstateAgentMustHaveExperienceSelling
	PropertyType realEstateExperienceSelection	
	Integer realEstateExperienceYears
	String realEstateExperienceYearsSelection
	
	boolean realEstateAgentCanKeepFullAmountSellerFindsBuyer
	boolean realEstateAgentEarnsFullAmountOnlyIfSellerFindsBuyer
	boolean realEstateCanBeEngagedByBothBuyerAndSeller
	
	String realEstateAgentToRecommendOtherServices
	String realEstateAgentMustWorkFullTime
	String realEstateAgentMustProfessionalDesignations
	String realEstateAgentMustHoldOtherLicenses
	String realEstateAgentEducationLevel
	
	String realEstateAgentRecommendedNonAffiliatedPartiesForAnnciallaryServices
	Integer realEstateAgentNumberOfPriceQuotes
	
	static hasMany = [ agentProfessionalDesignation : AgentProfessionalDesignation ]
	
	static constraints = {
		realEstateAgentCapacity inList : ['Full Service', 'Limited Role']
		realEstateAgentLimitedRoleType inList : ['Transaction Coordinator', 'Other']
		realEstateAgentNotNeededMoneySelection inList : ['Yes', 'No']
		realEstateAgentNotNeededAmountSelection inList : ['ListingAgentRequestTerms_NotNeededAmountSelectionAll', 'ListingAgentRequestTerms_NotNeededAmountSelectionOther']
		realEstateAgentNotNeededAmountOther scale : 2
		realEstateAgentToRecommendOtherServices inList : ['ListingAgentRequestTerms_AgentToRecommendOtherServicesSelectionYes', 'ListingAgentRequestTerms_AgentToRecommendOtherServicesSelectionNo']
		realEstateAgentMustWorkFullTime inList : ['ListingAgentRequestTerms_AgentWorkFullTimeSelectionYes','ListingAgentRequestTerms_AgentWorkFullTimeSelectionNo']
		realEstateAgentMustProfessionalDesignations inList : ['ListingAgentRequestTerms_AgentProfessionalDesignationsSelectionYes', 'ListingAgentRequestTerms_AgentProfessionalDesignationsSelectionNo']
		realEstateAgentMustHoldOtherLicenses inList : ['ListingAgentRequestTerms_AgentHoldsOtherLicensesSelectionYes', 'ListingAgentRequestTerms_AgentHoldsOtherLicensesSelectionNo']
	}
	
	static mapping = {
		realEstateAgentRecommendedNonAffiliatedPartiesForAnnciallaryServices column : 'RA_RECOMMENT_ANCIALLARY_SERVICES'
	}
	
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE)
	}
}

