

    $(window).load(function() {

	$('.productImageThumbnail').each(function(i) {
	    $(this).click(function(){
		$('.productImageMain > div').each(function(j) {
		    $(this).hide();
		});
		$('#productImageMain'+i).show();
	    });
	});

	$('.productImageMain > div').each(function(i) {
		$(this).css({
			position:'absolute',
			left: ($('.productImageMain').outerWidth() - $(this).width())/2,
			top: ($('.productImageMain').outerHeight() - $(this).height())/2
		});
	});

	$('.productImageThumbnail > img').each(function(i) {
		$(this).css({
			position:'absolute',
			left: ($('.productImageThumbnail').outerWidth() - $(this).width())/2,
			top: ($('.productImageThumbnail').outerHeight() - $(this).height())/2
		});
	});


	$('a.productLightbox').colorbox({rel:'productGroup'});


	var tabNum=0; var count=0;
        $('#productInfoData > div').each(function(i) {
	    if (this.className=='scTabTitle') {
		$('#productInfoJs > ul').append('<li><a href="#tab-'+tabNum+'">'+this.innerHTML+'</a></li>');
		$(this).remove();
	    }
	    else if (this.className=='scTabContent') {
		$('#productInfoJs').append('<div id="tab-'+tabNum+'">'+this.innerHTML+'</div>');
		$(this).remove();
	    }
	    if (count==1) {
		tabNum++
		count=0;
	    } else count++;
	});

	$('#productInfoJs').tabs();

    });


