---
---

$ ->

	# show #nav-scroller on scroll down
	$(window).scroll ->
		$scroller = $('#nav-scroller')
		if $(this).scrollTop() > 200 && $(this).width() > 767
			$scroller.removeClass('visible-xs-block').hide().fadeIn(500) if $scroller.hasClass('visible-xs-block')
		else
			unless $scroller.hasClass('visible-xs-block')
				$scroller.fadeOut 500, ->
					$scroller.addClass('visible-xs-block')
					return
		return

	# auto height
	resizeAutoHeights = ->
		currentTallest = 0
		$('.auto-height').each ->
			$autoHeight = $(this).find('.auto-height-elem')
			$autoHeight.each ->
				currentTallest = $(this).height() if $(this).height() > currentTallest
				return
			$autoHeight.each ->
				$(this).height 'auto'
				$(this).outerHeight currentTallest
				return
			return
		return
	window.onload = resizeAutoHeights
	$(window).resize ->
		resizeAutoHeights()

	# swipe capable carousel
	$('.carousel').swiperight ->
		$(this).carousel 'prev'
		return
	$('.carousel').swipeleft ->
		$(this).carousel 'next'
		return
