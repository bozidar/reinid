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
									<g:form id="form" name="form" url="[action:'realestateagentexperiencesellingrequest',controller:'listing']">									
										<h1>Real-Estate Agent Must Have Experience?</h1>
										
										<label>Experience Selling What type of property?
										<span class="small">Please select</span>
										</label>
										<g:select name="realEstateExperienceSelection" id="realEstateExperienceSelection"
											class="value ${hasErrors(bean: listingInstance, field: 'listingAgentRequest', 'errors')}"
								        	from="${PropertyType.list()}"
								          	value="${listingInstance?.listingAgentRequest?.realEstateExperienceSelection}" 
								          	optionKey="id"/>
																		
										<label>How Many Years of Experience?
										<span class="small">Please specify</span>
										</label>
										<g:select name="realEstateExperienceYearsSelection" id="realEstateExperienceYearsSelection"
											class="value ${hasErrors(bean: listingInstance, field: 'listingAgentRequest', 'errors')}"
								        	from="${['0-1', '1-5', '5-10','10+']}"
								          	value="${listingInstance?.listingAgentRequest?.realEstateExperienceYearsSelection}"/>
								          	
								        <label>Real Estate Agent Must Work Full-Time?
										<span class="small">Please select</span>
										</label>
										<g:select name="realEstateAgentMustWorkFullTime" id="realEstateAgentMustWorkFullTime"
											class="value ${hasErrors(bean: listingInstance, field: 'listingAgentRequest', 'errors')}"
								        	from="${['Yes', 'No']}"
								          	value="${listingInstance?.listingAgentRequest?.realEstateAgentMustWorkFullTime}" />  	
								          	
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
