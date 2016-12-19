$(function() {

	$(".changeLanguage").click(function(e){
		e.preventDefault();
		
		var newForm = $('<form>', {
	        'action': '/config/language/' + e.currentTarget.id
	    });
	    newForm.submit();
	});
});