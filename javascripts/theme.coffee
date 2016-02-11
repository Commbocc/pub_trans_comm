---
---

$ ->

	# auto height
	resizeAutoHeights = ->
		currentTallest = 0
		$('.auto-height').each ->
			$autoHeight = $(this).find('.auto-height-elem')
			$autoHeight.each ->
				currentTallest = ($(this).height() + 15) if $(this).height() > currentTallest
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
