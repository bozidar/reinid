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
									<g:form id="form" name="form" url="[action:'realestateagentlimitedrolerequest',controller:'listing']">									
										<h1>Real estate agent&trade; type of limited role?</h1>
										
										<label>Type of Limited Role
										<span class="small">Please specify</span>
										</label>
										
										<g:select name="realEstateAgentLimitedRoleType" from="${['Transaction Coordinator', 'Other']}" 
          									class="value ${hasErrors(bean: listingInstance, field: 'listingAgentRequest', 'errors')}"/>
																						
										<label>If Other Please Specify										
										</label>
										
										<g:textField 
											name="realEstateAgentLimitedRoleTypeDescription" 
											value="${listingInstance?.listingAgentRequest?.realEstateAgentLimitedRoleTypeDescription}" />
																						
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
