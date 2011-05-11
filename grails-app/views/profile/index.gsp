<html>
    <head>
        <title>Realtor Profile</title>
        <meta name="layout" content="mainsingle" />
    </head>
    <body>
     <div id="page" class="container">
     	<div id="page" class="container">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content-center-register">
     
    	<g:form id="form" name="form" url="[action:'profiletypeselect',controller:'Profile']">	
    	<h1>Realtor Profile</h1>
					<label>Realtor ID
					<span class="small"></span>
					</label>
					<input type="text" name="realtorId" id="realtorId" value="${userInstance?.firstName}" class="value ${hasErrors(bean: userInstance, field: 'firstName', 'errors')}" /><br/>
					<label>Affiliations
					<span class="small"></span>
					</label>
					<input type="text" name="affiliations" id="affiliations" value="${userInstance?.firstName}" class="value ${hasErrors(bean: userInstance, field: 'firstName', 'errors')}" /><br/>
					<label>MLS Affiliations</label><br/>
					<label>Professional Designation</label><br/>
					<label>Education</label><br/>
					<label>Years of Experience</label><br/>
					<label>Experienced Listing</label>
					<label>Licensed In</label><br/>
					<label>Licensed In Good Standing</label><br/>
										
										<label>Contact Info<br/>
					
   											<button type="submit">Save Profile</button>
										<div class="spacer"></div>
   	
    	</g:form>
    	</div>
    	</div>    	</div>
    	
    	</div>
    	</div>
     </body>
</html>
