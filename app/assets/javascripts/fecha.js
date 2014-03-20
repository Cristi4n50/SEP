$(document).ready(function() {
 
     $('.datepicker').datepicker({
        "format": "yyyy-mm-dd",
        "weekStart": 1,
        "language": 'es',
        "autoclose": true
      })

     $('input.hh').change(function(){
     	var hh = $('input.hh:checked').val();
     	if (hh == "true") {
     		$('#hidden_field').css('display', 'block');
     	}else{
     		$('#hidden_field').css('display', 'none');
     	}
     	
     })

});

