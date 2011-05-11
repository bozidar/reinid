$(document).ready(function() {
	$('#propertyTypeMain').change(function() {
		var proptype = $('#propertyTypeMain option:selected').val();
		if (proptype === 'Commercial') {
			$("#listingType option[value='Rent']").remove();
		} else {
			$("#listingType").append('<option value="Rent">Rent</option>');
		}
	});
});