<%@ page import="com.reinid.domain.setup.RealEstateAgency" %>
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
									<g:form id="form" name="form" url="[action:'existinglistingdetail',controller:'listing']">									
										<h1>Existing Listing Details</h1>
										
										<label>Listing Expiration Date
										<span class="small">Please specify</span>
										</label>
										<calendar:datePicker name="listingExpirationDate" value="${listingInstance?.listingExpirationDate}"
											class="value ${hasErrors(bean: listingInstance, field: 'propertyType', 'errors')}"/>
										
										<label>Listed with what agency?
										<span class="small">Please select</span>
										</label>
										<g:select name="listedWithAgencyOption" id="listedWithAgencyOption"
											class="value ${hasErrors(bean: listingInstance, field: 'listedWithAgency', 'errors')}"
								        	from="${RealEstateAgency.list()}"
								          	value="${listingInstance?.propertyType?.id}"
								          	optionKey="id" />
										
								        <label>May Another Listing Agent Contact You After Listing Expires										
										</label>
										<g:select name="propertyListedExpirationContactAfter" id="propertyListedExpirationContactAfter"
											class="value ${hasErrors(bean: listingInstance, field: 'propertyListedExpirationContactAfter', 'errors')}"
								        	from="${['Yes', 'No']}"
								          	value="${listingInstance?.propertyListedExpirationContactAfter}"/>
								          	
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
