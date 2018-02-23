$(document).ready(function() {
	$('.clickable').click(function(e){
		var $this = $(this);
		if(!$this.hasClass('panel-collapsed')) {
			$this.parents('.panel').find('.panel-body').slideUp();
			$this.addClass('panel-collapsed');
			$this.find('i').removeClass('glyphicon-chevron-up').addClass('glyphicon-chevron-down');
		} else {
			$this.parents('.panel').find('.panel-body').slideDown();
			$this.removeClass('panel-collapsed');
			$this.find('i').removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-up');
		}
	});

	$('.add-keyword').click(function() {
		var keyword_val = $('.keyword_val').val();
		if(keyword_val){
			$('.keyword_val').css({"border":""});
			$('.keywords').append('<span class="btn btn-primary keyword-span ' + 'keyword-' + keyword_val + '">' + keyword_val + '</span>');
		}else{
			$('.keyword_val').css({"border":"1px solid red"});
			alert("Please type your Keyword!");			
		}
	});
	
});
