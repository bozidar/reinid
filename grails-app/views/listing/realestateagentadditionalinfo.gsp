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
									<g:form id="form" name="form" url="[action:'realestateagentadditionalinforequest',controller:'listing']">									
										<h1>Real Estate Agent Additional Information</h1>
										
										<label>Real Estate Agent to Recommend Other Services?
										<span class="small">Please select</span>
										</label>
										<g:select name="realEstateAgentToRecommendOtherServices" id="realEstateAgentToRecommendOtherServices"
											class="value ${hasErrors(bean: listingInstance, field: 'listingAgentRequest', 'errors')}"
								        	from="${['Yes', 'No']}"
								          	value="${listingInstance?.listingAgentRequest?.realEstateAgentToRecommendOtherServices}" />
										<br/><br/><br/><br/>
										<label>Real Estate Agent Must Have Professional Designations?
										<span class="small">Please select</span>
										</label>
										<g:select name="realEstateAgentMustProfessionalDesignations" id="realEstateAgentMustProfessionalDesignations"
											class="value ${hasErrors(bean: listingInstance, field: 'listingAgentRequest', 'errors')}"
								        	from="${['Yes', 'No']}"
								          	value="${listingInstance?.listingAgentRequest?.realEstateAgentMustProfessionalDesignations}" />								          	
										<br/><br/><br/><br/>																	
										<label>Real Estate Agent Must Hold Other Licenses?
										<span class="small">Please select</span>
										</label>
										<g:select name="realEstateAgentMustHoldOtherLicenses" id="realEstateAgentMustHoldOtherLicenses"
											class="value ${hasErrors(bean: listingInstance, field: 'listingAgentRequest', 'errors')}"
								        	from="${['Yes', 'No']}"
								          	value="${listingInstance?.listingAgentRequest?.realEstateAgentMustHoldOtherLicenses}" />
								          	
								        <label>Real Estate Minimum Educational Level 
										<span class="small">Please select</span>
										</label>
										<g:select name="realEstateAgentEducationLevel" id="realEstateAgentEducationLevel"
											class="value ${hasErrors(bean: listingInstance, field: 'listingAgentRequest', 'errors')}"
								        	from="${['High School', 'Associate Degree', 'Bachelors Degree', 'Masters Degree']}"
								          	value="${listingInstance?.listingAgentRequest?.realEstateAgentEducationLevel}" />
										
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
