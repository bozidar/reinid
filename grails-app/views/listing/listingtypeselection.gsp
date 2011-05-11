<%@ page import="com.reinid.domain.setup.PropertyType" %>
<html>
<head>
<meta name='layout' content='mainsingle' />
<link rel="stylesheet" href="${resource(dir:'css',file:'form.css')}" />
<script type="text/javascript" src="${resource(dir:'js',file:'listingtypeselection.js')}"></script>
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
									<g:form id="form" name="form" url="[action:'listingtypeselect',controller:'listing']">									
										<h1>Sell, Lease, or Rent?</h1>
										
										<label>Is Property Currently Listed
										<span class="small">Please select</span>
										</label>
										<g:select name="propertyListed" id="propertyListed"
											class="value ${hasErrors(bean: listingInstance, field: 'propertyListed', 'errors')}"
								        	from="${['No', 'Yes']}"
								          	value="${listingInstance?.propertyListed}"/>

										<label>Commercial or Residential?
										<span class="small">Please select</span>
										</label>
										<g:select name="propertyTypeMain" id="propertyTypeMain"
											class="value ${hasErrors(bean: listingInstance, field: 'propertyTypeMain', 'errors')}"
								        	from="${['Residential', 'Commercial']}"
								          	value="${listingInstance?.propertyTypeMain}" />
								          											
										<label>What do you want to do with your property?
										<span class="small">Please select</span>
										</label>
										<g:select name="listingType" id="listingType"
											class="value ${hasErrors(bean: listingInstance, field: 'listingType', 'errors')}"
								        	from="${['[Please Select]', 'Sell', 'Lease', 'Rent']}"
								          	value="${listingInstance?.listingType}"/>								          	
								        
								        <label>Rent/Lease Term
										<span class="small">Please select</span>
										</label>
										<g:select name="rentLeaseTerm" id="rentLeaseTerm"
											class="value ${hasErrors(bean: listingInstance, field: 'rentLeaseTerm', 'errors')}"
								        	from="${['[Please Select]']}"
								          	value="${listingInstance?.rentLeaseTerm}"/>
								        
								        <label>What type of property?
										<span class="small">Please select</span>
										</label>
										<g:select name="propertyTypeOption" id="propertyTypeOption"
											class="value ${hasErrors(bean: listingInstance, field: 'propertyType', 'errors')}"
								        	from="${PropertyType.list()}"
								          	value="${listingInstance?.propertyType?.id}"
								          	optionKey="id" />
								        
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
