<html>
    <head>
        <title><g:layoutTitle default="reinID New Listing" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'hedge.css')}" />        
        <g:layoutHead />
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.js"></script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.5/jquery-ui.js"></script>
    </head>
    <body>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>
        <div id="banner">        
	        <table width="940" height="25" border="0" align="center" cellpadding="5" cellspacing="0"> 
	  			<tr> 
	    			<td height="30" align="right" valign="bottom" class="navigation">&nbsp;</td> 
	    			<td width="10%" align="right" valign="bottom" nowrap class="navbar"><a href="#" class="navigation">HOME</a> | <a href="#" class="navigation">ABOUT US</a> | <a href="#" class="navigation">ARTICLES</a> | <a href="#" class="navigation">COMMUNITY</a> | <a href="#" class="navigation">LOGIN</a> | <a href="#" class="navigation">NEWS</a> | <a href="#" class="navigation">TOOLS</a> </td> 
	  			</tr> 
			</table>
		 </div>
        <g:layoutBody />
    </body>
</html>