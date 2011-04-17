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
									<g:form id="form" name="form" url="[action:'newlistingpaymentrequest',controller:'listing']">									
										<h1>Billing Information (Required)</h1>
										
										<label>First Name
										<span class="small">Please specify</span>
										</label>
										<g:textField 
											class="value ${hasErrors(bean: listingInstance, field: 'listingPayment', 'errors')}"
											name="firstName" 
											value="${listingInstance?.listingPayment?.firstName}" />
										
										<label>Last Name
										<span class="small">Please specify</span>
										</label>
										<g:textField 
											class="value ${hasErrors(bean: listingInstance, field: 'listingPayment', 'errors')}"
											name="lastName" 
											value="${listingInstance?.listingPayment?.lastName}" />
										
										<label>Company
										<span class="small">Optional</span>
										</label>
										<g:textField 
											class="value ${hasErrors(bean: listingInstance, field: 'listingPayment', 'errors')}"
											name="company" 
											value="${listingInstance?.listingPayment?.company}" />
										
										<label>Address Line 1
										<span class="small">Please specify</span>
										</label>
										<g:textField 
											class="value ${hasErrors(bean: listingInstance, field: 'listingPayment', 'errors')}"
											name="address1" 
											value="${listingInstance?.listingPayment?.address1}" />
										
										<label>Address Line 2
										<span class="small">Optional</span>
										</label>
										<g:textField 
											class="value ${hasErrors(bean: listingInstance, field: 'listingPayment', 'errors')}"
											name="address2" 
											value="${listingInstance?.listingPayment?.address2}" />
										
										<label>City
										<span class="small">Please specify</span>
										</label>
										<g:textField 
											class="value ${hasErrors(bean: listingInstance, field: 'listingPayment', 'errors')}"
											name="city" 
											value="${listingInstance?.listingPayment?.city}" />
										
										
										<label>State
										<span class="small">Please select</span>
										</label>
										<g:select name="state" id="state"
											class="value ${hasErrors(bean: listingInstance, field: 'listingPayment', 'errors')}"
								        	from="${['AR', 'AL', 'CA', 'MD', 'DC']}"
								          	value="${listingInstance?.listingPayment?.state}" />
								          	
								        <label>Zip Code
										<span class="small">Please specify</span>
										</label>
										<g:textField 
											class="value ${hasErrors(bean: listingInstance, field: 'listingPayment', 'errors')}"
											name="zipcode" 
											value="${listingInstance?.listingPayment?.zipcode}" /> 
											
										<label>Country
										<span class="small">Please specify</span>
										</label>
										<g:textField 
											class="value ${hasErrors(bean: listingInstance, field: 'listingPayment', 'errors')}"
											name="country" 
											value="${listingInstance?.listingPayment?.country}" /> 											 	
								          	
								        <label>Contact Phone
										<span class="small">Optional</span>
										</label>
										<g:textField 
											class="value ${hasErrors(bean: listingInstance, field: 'listingPayment', 'errors')}"
											name="phonenumber" 
											value="${listingInstance?.listingPayment?.phonenumber}" />   	
								          	
								        <h1>Payment Information (Required)</h1>  	
								          	
								        <label>Card Expiration Date
										<span class="small">Please specify</span>
										</label>
										<calendar:datePicker name="expirationDate" value="${listingInstance?.listingPayment?.expirationDate}"
											class="value ${hasErrors(bean: listingInstance, field: 'listingPayment', 'errors')}"/>  
											  	
								        <label>Credit Card Number
										<span class="small">Please specify</span>
										</label>
										<g:textField 
											class="value ${hasErrors(bean: listingInstance, field: 'listingPayment', 'errors')}"
											name="creditCardNumber" 
											value="${listingInstance?.listingPayment?.creditCardNumber}" />   	
								         
								        <label>Card Security Code
										<span class="small">Please specify</span>
										</label>
										<g:textField 
											class="value ${hasErrors(bean: listingInstance, field: 'listingPayment', 'errors')}"
											name="cvvCode" 
											value="${listingInstance?.listingPayment?.cvvCode}" />  
								          	
								        <h1>Additional Information (Optional)</h1>    	
								          	
								        <label>Contact Email
										<span class="small">Optional</span>
										</label>
										<g:textField 
											class="value ${hasErrors(bean: listingInstance, field: 'listingPayment', 'errors')}"
											name="contactEmail" 
											value="${listingInstance?.listingPayment?.contactEmail}" /> 
											
										<label>Special Notes
										<span class="small">Optional</span>
										</label>
										<g:textField
											class="value ${hasErrors(bean: listingInstance, field: 'listingPayment', 'errors')}"
											name="specialNotes" 
											value="${listingInstance?.listingPayment?.specialNotes}" /> 	  	
								          	
										<button type="submit">Submit Payment</button>
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
