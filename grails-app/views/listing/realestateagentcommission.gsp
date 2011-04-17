<html>
<head>
<meta name='layout' content='mainsingle' />
<link rel="stylesheet" href="${resource(dir:'css',file:'form.css')}" />
<script type="text/javascript" src="${resource(dir:'js',file:'realestateagentcommission.js')}"></script>
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
									<g:form id="form" name="form" url="[action:'realestateagentcommissionrequest',controller:'listing']">									
										<h1>Real-Estate Compensation</h1>
										
										<label>Type of Compensation
										<span class="small">Please specify</span>
										</label>
										
										<g:select name="compensationType" from="${['Commission', 'Fixed Amount']}" 
          									class="value ${hasErrors(bean: listingInstance, field: 'listingAgentCompensation', 'errors')}"/>
																		
										<h1>Commission Breakdown (If Commission)</h1>
										
										<label>Property Listing Price
										<span class="small">Please specify</span>
										</label>
										
										<g:textField 
											id="listingPrice"
											name="listingPrice" 
											value="${listingInstance?.listingPrice}" />
																																
										<label>Commission Percentage(%)
										<span class="small">Please specify</span>
										</label>
										
										<g:textField 
											id="realEstateAgentCompensationCommissionRate"
											name="realEstateAgentCompensationCommissionRate" 
											value="${listingInstance?.listingAgentCompensation?.realEstateAgentCompensationCommissionRate}" />
										
										<label>Calculated Commission										
										</label>
										
										<g:textField 
											id="realEstateAgentCompensationCommissionCalculatedAmount"
											name="realEstateAgentCompensationCommissionCalculatedAmount" 
											value="${listingInstance?.listingAgentCompensation?.realEstateAgentCompensationCommissionCalculatedAmount}" />
														
										<h1>Commission Amount (If Fixed Amount)</h1>	
											
										<label>Commission Amount
										<span class="small">Please specify</span>
										</label>
										
										<g:textField 
											name="realEstateAgentCompensationFixedAmount" 
											value="${listingInstance?.listingAgentCompensation?.realEstateAgentCompensationFixedAmount}" />
																															
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
