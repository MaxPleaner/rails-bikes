Toggling =

  init: ->
    $.each $("*[toggles]"), (idx, el) -> 
      $(el).on 'click', Toggling.togglerOnClick

  togglerOnClick: (e) ->
    $el = $ e.currentTarget
    $target = $ $el.attr('toggles')
    $target.toggleClass('hidden')

Routing = 

  init: ->
    routeParts = window.location.hash.slice(1).split('/')
    routeParts.forEach (part) ->
      $button = $("a[href^='#']").find("[name='#{part}']")  
      $button.trigger("click")

StickyHeader =

  init: ->
    $("#headers").sticky()
    $(".header").sticky
      topSpacing: 0
    $(".header2").sticky
      topSpacing: 50
    $(".header3").sticky
      topSpacing: 100

BikesSubmenu = 

  init: ->
    $(".header3").hide()
    window.header3Hidden = true
    $("button[toggles='#bikes']").on 'click', (e) ->
      if header3Hidden
        $(".header3").show()
      else
        $(".header3").hide()
      window.header3Hidden = ! header3Hidden
      true


window.RailsBikes = -> $ ->
  Toggling.init()
  Routing.init()
  StickyHeader.init()
  BikesSubmenu.init()



