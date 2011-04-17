<html>
<head>
<meta name='layout' content='mainsingle' />
<link rel="stylesheet" href="${resource(dir:'css',file:'form.css')}" />
<title>Create a new Listing</title>
</head>

<body class="single">
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
									<g:form id="form" name="form" url="[action:'realestateagentfullcommissionrequest',controller:'listing']">									
										<h1>Type of Listing Contract</h1>
										
										<label>Commission										
										</label>
										
										<g:textField 
											name="realEstateAgentCompensationCommissionCalculatedAmount" 
											value="${listingInstance?.listingAgentCompensation?.realEstateAgentCompensationCommissionCalculatedAmount}" />
										
										<label>Real Estate Agent Keeps full commission if she/he finds a buyer?
										<span class="small">Please select</span>
										</label>
										<g:select name="realEstateAgentCanKeepFullAmountSellerFindsBuyer" id="realEstateAgentCanKeepFullAmountSellerFindsBuyer"
											class="value ${hasErrors(bean: listingInstance, field: 'listingAgentRequest', 'errors')}"
								        	from="${['Yes', 'No']}"
								          	value="${listingInstance?.listingAgentRequest?.realEstateAgentCanKeepFullAmountSellerFindsBuyer}"/>	
								        	
								        <br/><br/><br/><br/><br/><br/><br/><br/><br/>
								        <label>Real Estate Agent Can be engaged by both buyer and seller?
										<span class="small">Please select</span>
										</label>
										<g:select name="realEstateCanBeEngagedByBothBuyerAndSeller" id="realEstateCanBeEngagedByBothBuyerAndSeller"
											class="value ${hasErrors(bean: listingInstance, field: 'listingAgentRequest', 'errors')}"
								        	from="${['Yes', 'No']}"
								          	value="${listingInstance?.listingAgentRequest?.realEstateCanBeEngagedByBothBuyerAndSeller}"/>
								          	
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
