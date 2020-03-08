$(document).ready(function() {
	$('#search-type-js').on('click', function() {
		$(this).toggleClass('active');
	
		if($(this).hasClass('active')) {
			$('#search-type-list-js').show();
		} else {
			$('#search-type-list-js').hide();
		}
	});
	
	$('#search-type-list-js li').on('click', function() {
		var selectedType = $(this).text();
		$('#search-type-js').removeClass('active');
		$('#search-type-js .search-type-text').text(selectedType);
		$('#search-type-list-js li').removeClass('active');
		$(this).addClass('active');
		$(this).parent().hide();
	});
});