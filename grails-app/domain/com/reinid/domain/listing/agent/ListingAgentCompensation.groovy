package com.reinid.domain.listing.agent

import java.io.Serializable;
import org.apache.commons.lang.builder.ToStringBuilder 
import org.apache.commons.lang.builder.ToStringStyle 

class ListingAgentCompensation implements Serializable {
	
	String compensationType
	Float realEstateAgentCompensationCommissionRate
	Float realEstateAgentCompensationFixedAmount
	Float realEstateAgentCompensationCommissionCalculatedAmount
	
    static constraints = {
		compensationType inList : ['ListingAgentCompensationCommission', 'ListingAgentCompensationFixedAmount']
		realEstateAgentCompensationCommissionRate scale : 2
		realEstateAgentCompensationFixedAmount scale : 2
		realEstateAgentCompensationCommissionCalculatedAmount scale : 2
    }
	
	public Float getRealEstateAgentCompensationCommissionCalculatedAmount() {
		realEstateAgentCompensationFixedAmount ? realEstateAgentCompensationFixedAmount : realEstateAgentCompensationCommissionCalculatedAmount
	}
	
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE)
	}
}
