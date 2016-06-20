window.TC.sortable.servicePhoto.init = ->

  $('.js-sortable').sortable()

  $('.js-sortable').sortable().bind 'sortupdate', ->
    $('.sortable__item').each (i) ->
      $(this).children('input').val i
      return

    $('#new_image_arrangement_form').submit()
    return

  $('textarea').blur ->
    $('#new_image_arrangement_form').submit()
    return
