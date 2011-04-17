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
									<g:form id="form" name="form" url="[action:'realestateagentcapacityrequest',controller:'listing']">									
										<h1>Real estate agent&trade; in what capacity?</h1>
										
										<label>In What Capacity
										<span class="small">Please specify</span>
										</label>
										
										<g:select name="realEstateAgentCapacity" from="${['Full Service', 'Limited Role']}" 
          									class="value ${hasErrors(bean: listingInstance, field: 'listingAgentRequest', 'errors')}"/>
																						
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
