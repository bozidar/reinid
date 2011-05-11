$(document).ready(function() {
	$('#propertyTypeMain').change(function() {
		var proptype = $('#propertyTypeMain option:selected').val();
		if (proptype === 'Commercial') {
			$("#listingType option[value='Rent']").remove();
		} else {
			$("#listingType").append('<option value="Rent">Rent</option>');
		}
	});
	$('#listingType').change(function() {
		var listingtype = $('#listingType option:selected').val();
		if (listingtype === 'Rent') {
			$("#rentLeaseTerm option[value='Not Applicable']").remove();
			$("#rentLeaseTerm option[value='6 Months']").remove();
			$("#rentLeaseTerm option[value='12 Months']").remove();
			$("#rentLeaseTerm option[value='2 Years']").remove();
			$("#rentLeaseTerm option[value='3 Years']").remove();
			$("#rentLeaseTerm option[value='4 Years']").remove();
			$("#rentLeaseTerm option[value='5 Years']").remove();
			
			$("#rentLeaseTerm").append('<option value="Month to Month">Month to Month</option>');
			$("#rentLeaseTerm").append('<option value="1 Month">1 Month</option>');
			$("#rentLeaseTerm").append('<option value="2 Months">2 Months</option>');
			$("#rentLeaseTerm").append('<option value="3 Months">3 Months</option>');
			$("#rentLeaseTerm").append('<option value="4 Months">4 Months</option>');
			$("#rentLeaseTerm").append('<option value="5 Months">5 Months</option>');
		} else if (listingtype === 'Lease') {
			$("#rentLeaseTerm option[value='Not Applicable']").remove();
			$("#rentLeaseTerm option[value='Month to Month']").remove();
			$("#rentLeaseTerm option[value='1 Month']").remove();
			$("#rentLeaseTerm option[value='2 Months']").remove();
			$("#rentLeaseTerm option[value='3 Months']").remove();
			$("#rentLeaseTerm option[value='4 Months']").remove();
			$("#rentLeaseTerm option[value='5 Months']").remove();
			
			$("#rentLeaseTerm").append('<option value="6 Months">6 Months</option>');
			$("#rentLeaseTerm").append('<option value="12 Months">12 Months</option>');
			$("#rentLeaseTerm").append('<option value="2 Years">2 Years</option>');
			$("#rentLeaseTerm").append('<option value="3 Years">3 Years</option>');
			$("#rentLeaseTerm").append('<option value="4 Years">4 Years</option>');
			$("#rentLeaseTerm").append('<option value="5 Years">5 Years</option>');
		} else if (listingtype === 'Sell'){
			$("#rentLeaseTerm option[value='Month to Month']").remove();
			$("#rentLeaseTerm option[value='1 Month']").remove();
			$("#rentLeaseTerm option[value='2 Months']").remove();
			$("#rentLeaseTerm option[value='3 Months']").remove();
			$("#rentLeaseTerm option[value='4 Months']").remove();
			$("#rentLeaseTerm option[value='5 Months']").remove();
			$("#rentLeaseTerm option[value='6 Months']").remove();
			$("#rentLeaseTerm option[value='12 Months']").remove();
			$("#rentLeaseTerm option[value='2 Years']").remove();
			$("#rentLeaseTerm option[value='3 Years']").remove();
			$("#rentLeaseTerm option[value='4 Years']").remove();
			$("#rentLeaseTerm option[value='5 Years']").remove();
			
			$("#rentLeaseTerm").append('<option value="Not Applicable">Not Applicable</option>');
		}
	});
});