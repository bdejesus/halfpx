$(document).ready(->
  console.log('ready')
  $('.photographs li .image').css('height', $(window).height())


  resizeTimeout = null
  $(window).resize(->
    clearTimeout(resizeTimeout)
    resizeTimeout = setTimeout(->
      $('.photographs li .image').css('height', $(window).height())
    , 300)
  )

  speed = 10;

  $('.photographs li .image').each(->
    bgobj = jQuery(this);
    win = jQuery(window);
    win.scroll(->
      yPos = -( (win.scrollTop() - bgobj.offset().top) / speed );
      xPos = '50% '

      coords = xPos + yPos + 'px';
      bgobj.css('background-position', coords);
    )
  )
)



