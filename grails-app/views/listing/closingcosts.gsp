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
									<g:form id="form" name="form" url="[action:'closingcostsrequest',controller:'listing']">									
										<h1>Closing Costs</h1>
										
										<label>Closing costs paid by?
										<span class="small">Please select</span>
										</label>
										<g:select name="closingCostsPaidBy" id="closingCostsPaidBy"
											class="value ${hasErrors(bean: listingInstance, field: 'closingCostsPaidBy', 'errors')}"
								        	from="${['Buyer', 'Seller', 'Other']}"
								          	value="${listingInstance?.closingCostsPaidBy}" />
										
										<label>If Other Please Specify?										
										</label>
										<g:textField 
											class="value ${hasErrors(bean: listingInstance, field: 'closingCostsOtherDescription', 'errors')}"
											name="closingCostsOtherDescription" 
											value="${listingInstance?.closingCostsOtherDescription}" />
										
										<label>Contact by?
										<span class="small">Please select</span>
										</label>
										<g:select name="contactBy" id="contactBy"
											class="value ${hasErrors(bean: listingInstance, field: 'contactBy', 'errors')}"
								        	from="${['Phone', 'Email', 'In Person', 'Facebook', 'Do not Contact']}"
								          	value="${listingInstance?.contactBy}" />
								          	
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
