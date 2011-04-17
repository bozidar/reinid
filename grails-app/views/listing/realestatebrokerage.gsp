<%@ page import="com.reinid.domain.setup.PropertyType" %>
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
									<g:form id="form" name="form" url="[action:'realestatebrokeragerequest',controller:'listing']">									
										<h1>Real Estate Brokerage</h1>
										
										<label>Real Estate Brokerage Type
										<span class="small">Please select</span>
										</label>
										<g:select name="realEstateBrokerageSelection" id="realEstateBrokerageSelection"
											class="value ${hasErrors(bean: listingInstance, field: 'realEstateBrokerageSelection', 'errors')}"
								        	from="${['Established', 'Independent', 'No Preference']}"
								          	value="${listingInstance?.realEstateBrokerageSelection}"/>								          	
								        
								        <label>Real Estate Agent Brokerage House
										<span class="small">Please select</span>
										</label>
										<g:select name="realEstateAgentBrokerageHouseName" id="realEstateAgentBrokerageHouseName"
											class="value ${hasErrors(bean: listingInstance, field: 'realEstateAgentBrokerageHouseName', 'errors')}"
								        	from="${['Brokerage 1', 'Brokerage 2', 'Brokerage 3', 'Brokerage 4']}"
								          	value="${listingInstance?.realEstateAgentBrokerageHouseName}" />
								        
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
