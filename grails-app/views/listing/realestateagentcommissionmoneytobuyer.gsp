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
									<g:form id="form" name="form" url="[action:'realestateagentcommissiontobuyerrequest',controller:'listing']">									
										<h1>Should Commission Money Be Made Available to Buyer?</h1>
										
										<label>Commission Money Be Made Available to Buyer
										<span class="small">Please specify</span>
										</label>
										
										<g:select name="realEstateAgentNotNeededMoneySelection" from="${['Yes', 'No']}" 
          									class="value ${hasErrors(bean: listingInstance, field: 'listingAgentRequest', 'errors')}"/>
          									
          								<label>If Yes, how much?
										<span class="small">Please specify</span>
										</label>
										
										<g:select name="realEstateAgentNotNeededAmountSelection" from="${['All', 'Other']}" 
          									class="value ${hasErrors(bean: listingInstance, field: 'listingAgentRequest', 'errors')}"/>	
																						
										<label>If Other Please Specify Amount										
										</label>
										
										<g:textField 
											name="realEstateAgentNotNeededAmountOther" 
											value="${listingInstance?.listingAgentRequest?.realEstateAgentNotNeededAmountOther}" />
																						
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
