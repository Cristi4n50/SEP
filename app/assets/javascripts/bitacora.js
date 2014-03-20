$(document).ready(function(){
	$("#txt2").css('display','none')

	$('#si').click(function() {
	 	var valin = $(this).val()
	 	if (valin == 2 ) {
	       $("#txt2").css('display','block');
	       $("#txt1").css('display','none')
	    }
	})
	$('#no').click(function(){
		var valin = $(this).val()
	 	if (valin == 1 ) {
	       $("#txt2").css('display','none');
	       $("#txt1").css('display','block')
	    }
	})
})

