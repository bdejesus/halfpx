$(document).ready(->
  $('.photographs li .image').css('height', $(window).height())

  resizeTimeout = null

  $(window).resize(->
    clearTimeout(resizeTimeout)
    resizeTimeout = setTimeout(->
      $('.photographs li .image').css('height', $(window).height())
    , 300)
  )

  speed = 6

  $('.photographs li .image').each(->
    bgobj = $(this);
    win = $(window);
    win.scroll(->
      yPos = -( (win.scrollTop() - bgobj.offset().top) / speed );
      xPos = '50% '

      if (bgobj.hasClass('lead'))
        console.log(bgobj)
        xPos = '0px '
      else
        xPos = '50% '

      coords = xPos + yPos + 'px';
      bgobj.css('background-position', coords);
    )
  )
)



