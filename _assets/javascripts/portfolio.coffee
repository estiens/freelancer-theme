$ ->
  headers = $("#quotes li")
  quotes = []
  headers.each ->
    quotes.push $(this).text()
  index = Math.floor(Math.random() * quotes.length);
  quote = quotes[index]

  $('#random-header').html(quote)
  $(".set-img").hover(
    (ev) ->
      randIndex = Math.floor((Math.random() * 100) - 50)
      $(this).velocity({rotateZ: randIndex, 500})
      $(this).css("-webkit-filter": "invert(0)")
      $(this).css("filter": "invert(0)")
      $(this).parent().parent().parent().find('.set-title').css("color":"#FD6E8A");
      $(this).parent().parent().parent().find('.set-title').fadeIn(1000);
    (ev) ->
      # $(this).parent().parent().parent().find('.set-title').css("color":"white");
      $(this).parent().parent().parent().find('.set-title').fadeOut(500);)

  animationFields = $('.set-img')

  changeColor = (field) ->
    randColor = Math.floor(Math.random() * 360)
    randSepia = Math.floor(Math.random() * 101)
    randInvert = Math.random() - 0.2
    $(field).css("-webkit-filter": "invert(#{randInvert}) sepia(#{randSepia}%) hue-rotate(+#{randColor}deg)")
    $(field).css("filter": "invert(#{randInvert}) sepia(#{randSepia}%) hue-rotate(+#{randColor}deg)")

  do animate = ->
    for field in animationFields
      randDelay = (Math.floor(Math.random() * 2001)) + 1000
      changeColor(field)
    setTimeout animate, randDelay
