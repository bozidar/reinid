$(document).ready(function () {

  $('#realEstateAgentCompensationCommissionRate').change(function () {
    var a = parseFloat( $("#listingPrice").val(), 10.00 );
    var b = parseFloat( $("#realEstateAgentCompensationCommissionRate").val(), 10.00 );
    
    a = isNaN(a) ? 0 : a;
    b = isNaN(b) ? 0 : b;
    
    $('#realEstateAgentCompensationCommissionCalculatedAmount').val(a * (b/100));
    
    if (b <= 4) {
    	alert("4% or lower commission greatly reduces the likelyhood of Real estate agent agreeing to work with you on this property");
    }
  });

});