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
									<g:form id="form" name="form" url="[action:'listingdetailbasicrequest',controller:'listing']">									
										<h1>Listing Details</h1>
										
										<label>Listing Price *																			
										</label>
										<g:textField 
											class="value ${hasErrors(bean: listingInstance, field: 'listingPrice', 'errors')}"
											name="listingPrice" 
											value="${listingInstance?.listingPrice}" />
										
										<label>Year Built
										<span class="small">Optional</span>
										</label>
										<g:textField 
											class="value ${hasErrors(bean: listingInstance, field: 'yearBuilt', 'errors')}"
											name="yearBuilt" 
											value="${listingInstance?.yearBuilt}" />
										
										<label>Address Line 1 *										
										</label>
										<g:textField 
											class="value ${hasErrors(bean: listingInstance, field: 'listingAddress', 'errors')}"
											name="address1" 
											value="${listingInstance?.listingAddress?.address1}" />
										
										<label>Address Line 2
										<span class="small">Optional</span>
										</label>
										<g:textField 
											class="value ${hasErrors(bean: listingInstance, field: 'listingAddress', 'errors')}"
											name="address2" 
											value="${listingInstance?.listingAddress?.address2}" />
										
										<label>City *										
										</label>
										<g:textField 
											class="value ${hasErrors(bean: listingInstance, field: 'listingAddress', 'errors')}"
											name="city" 
											value="${listingInstance?.listingAddress?.city}" />
										
										
										<label>State *										
										</label>
										<g:select name="state" id="state"
											class="value ${hasErrors(bean: listingInstance, field: 'listingAddress', 'errors')}"
								        	from="${['AR', 'AL', 'CA', 'MD', 'DC']}"
								          	value="${listingInstance?.listingAddress?.state}" />
								          	
								        <label>Zip Code *										
										</label>
										<g:textField 
											class="value ${hasErrors(bean: listingInstance, field: 'listingAddress', 'errors')}"
											name="zipcode" 
											value="${listingInstance?.listingAddress?.zipcode}" /> 
											
										<label>Country
										<span class="small">Optional</span>
										</label>
										<g:textField 
											class="value ${hasErrors(bean: listingInstance, field: 'listingAddress', 'errors')}"
											name="country" 
											value="${listingInstance?.listingAddress?.country}" /> 											 	
								          	
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
