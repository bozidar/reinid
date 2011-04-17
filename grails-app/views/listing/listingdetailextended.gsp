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
									<g:form id="form" name="form" url="[action:'listingdetailextendedrequest',controller:'listing']">									
										<h1>Listing Details</h1>
										
										<label>Number of Bedrooms *										
										</label>
										<g:select name="numberOfBedrooms" id="numberOfBedrooms"
											class="value ${hasErrors(bean: listingInstance, field: 'numberOfBedrooms', 'errors')}"
								        	from="${['0','1', '2', '3', '4', '5', '6','7','8','9','10','11','12']}"
								          	value="${listingInstance?.numberOfBedrooms}" />
								          	
								        <label>Number of 1/2 Bedrooms
										<span class="small">Optional</span>
										</label>
										<g:select name="numberOfHalfBedrooms" id="numberOfHalfBedrooms"
											class="value ${hasErrors(bean: listingInstance, field: 'numberOfHalfBedrooms', 'errors')}"
								        	from="${['0','1', '2', '3', '4', '5', '6','7','8','9','10','11','12']}"
								          	value="${listingInstance?.numberOfHalfBedrooms}" />  	
										
										<label>Number of Bathrooms *										
										</label>
										<g:select name="numberOfBathrooms" id="numberOfBathrooms"
											class="value ${hasErrors(bean: listingInstance, field: 'numberOfBathrooms', 'errors')}"
								        	from="${['0','1', '2', '3', '4', '5', '6','7','8','9','10','11','12']}"
								          	value="${listingInstance?.numberOfBathrooms}" />
										
										<label>Number of 1/2 Bathrooms *										
										</label>
										<g:select name="numberOfHalfBathrooms" id="numberOfHalfBathrooms"
											class="value ${hasErrors(bean: listingInstance, field: 'numberOfHalfBathrooms', 'errors')}"
								        	from="${['0','1', '2', '3', '4', '5', '6','7','8','9','10','11','12']}"
								          	value="${listingInstance?.numberOfHalfBathrooms}" />  
										
										<label>Lot Size (in acres)
										<span class="small">Optional</span>
										</label>
										<g:textField 
											class="value ${hasErrors(bean: listingInstance, field: 'lotSize', 'errors')}"
											name="lotSize" 
											value="${listingInstance?.lotSize}" />
										
										<label>Square Footage (total inside)
										<span class="small">Optional</span>
										</label>
										<g:textField 
											class="value ${hasErrors(bean: listingInstance, field: 'squareFootage', 'errors')}"
											name="squareFootage" 
											value="${listingInstance?.squareFootage}" />
										
										<label>Estimated Property Tax
										<span class="small">Optional</span>
										</label>
										<g:textField 
											class="value ${hasErrors(bean: listingInstance, field: 'estimatedPropertyTax', 'errors')}"
											name="estimatedPropertyTax" 
											value="${listingInstance?.estimatedPropertyTax}" />
										
										<label>Remarks
										<span class="small">Optional</span>
										</label>
										<g:textArea
											row="5"
											columns="40"
											class="value ${hasErrors(bean: listingInstance, field: 'remarks', 'errors')}"
											name="remarks" 
											value="${listingInstance?.remarks}" /> 
								          	
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
