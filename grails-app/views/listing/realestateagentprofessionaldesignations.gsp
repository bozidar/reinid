<%@ page import="com.reinid.domain.setup.AgentProfessionalDesignation" %>
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
									<g:form id="form" name="form" url="[action:'realestateagentprofessionaldesignationsrequest',controller:'listing']">									
										<h1>Real Estate Agent Professional Designation</h1>
										
										<label>Real Estate Professional Designations?
										<span class="small">Please select</span>
										</label>
										<!-- 
										<ui:multiSelect 
											id="agentProfessionalDesignation"
											name="agentProfessionalDesignation"
											multiple="yes"
                                 			from="${AgentProfessionalDesignation.list()}" 
                                 			value="${listingInstance?.listingAgentRequest?.agentProfessionalDesignation}"
                                 			noSelection="['':'Select One']"  />
                                 		 -->
                                 		 	
										<g:select 
											id="agentProfessionalDesignation"
											name="agentProfessionalDesignation"
											size="5" multiple="yes"
											from="${AgentProfessionalDesignation.list()}" 
                                 			value="${listingInstance?.listingAgentRequest?.agentProfessionalDesignation}" 
                                 			optionKey="id"/>
										
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
</script>
</body>
</html>
