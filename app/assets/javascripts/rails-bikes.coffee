Toggling =

  init: ->
    $.each $("*[toggles]"), (idx, el) -> 
      $(el).on 'click', Toggling.togglerOnClick

  togglerOnClick: (e) ->
    $el = $ e.currentTarget
    target = $el.attr('toggles')
    $(target).toggleClass('hidden')

Routing = 

  init: ->
    routeParts = window.location.hash.slice(1).split('/')
    routeParts.forEach (part) ->
      $button = $("a[href^='#']").find("[name='#{part}']")  
      $button.trigger("click")

window.RailsBikes = -> $ ->
  
  Toggling.init()
  Routing.init()


