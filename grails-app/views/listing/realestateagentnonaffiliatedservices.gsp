<%@ page import="com.reinid.domain.setup.PropertyType" %>
<html>
<head>
<meta name='layout' content='mainsingle' />
<link rel="stylesheet" href="${resource(dir:'css',file:'form.css')}" />
<title>Create a new Listing</title>
</head>

<body class="single">
	<calendar:resources lang="en" theme="blue"/>
	<div id="page" class="container">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content-center-register">
						<g:if test='${flash.message}'>
							<div class='login_message'>${flash.message}</div>
						</g:if>
						<div class="content">
							<div>
								<br/><br/><br/>
								<div id="stylized" class="myform">
									<g:hasErrors bean="${listingInstance}">
							            <div class="errors">
							                <g:renderErrors bean="${listingInstance}" as="list" />
							            </div>
						            </g:hasErrors>
									<g:form id="form" name="form" url="[action:'realestateagentnonaffiliatedservicesrequest',controller:'listing']">									
										<h1>Real Estate Agent To Recommend non-affiliated Parties for Annciallary Services?</h1>
										
										<label>Real Estate Agent to Recommend non-affiliated Parties?
										<span class="small">Please select</span>
										</label>
										<g:select name="realEstateAgentRecommendedNonAffiliatedPartiesForAnnciallaryServices" id="realEstateAgentRecommendedNonAffiliatedPartiesForAnnciallaryServices"
											class="value ${hasErrors(bean: listingInstance, field: 'listingAgentRequest', 'errors')}"
								        	from="${['Yes', 'No', 'No Preference']}"
								          	value="${listingInstance?.listingAgentRequest?.realEstateAgentRecommendedNonAffiliatedPartiesForAnnciallaryServices}" />
										<br/><br/><br/><br/>
										
										<label>If Yes, How many price quotes?
										<span class="small">Please select</span>
										</label>
										<g:select name="realEstateAgentNumberOfPriceQuotes" id="realEstateAgentNumberOfPriceQuotes"
											class="value ${hasErrors(bean: listingInstance, field: 'listingAgentRequest', 'errors')}"
								        	from="${['1', '2', '3', '4', '5', '6', '7', '8']}"
								          	value="${listingInstance?.listingAgentRequest?.realEstateAgentNumberOfPriceQuotes}" />
								          	
										<button type="submit">Next</button>
										<div class="spacer"></div>
									</g:form>
								</div>
							</div>						
					</div>
					<br/><br/><br/><br/>
				</div>
			</div>
		</div>
	</div>		
<script type='text/javascript'>
<!--
(function(){
	document.forms['form'].elements['listingType'].focus();
})();
// -->
</script>
</body>
</html>
