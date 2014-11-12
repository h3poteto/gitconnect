class @UsersStaticsController
  index: ->
    $(".feed-menu").click ()->
      $this = $(@)
      target = $this.data("target")
      $(".content-area").children().each (e,v)->
        if $(v).attr("id") == target
          $(v).show()
          $(".active").each (k,j)->
            $(j).removeClass("active")
          $this.addClass("active")
        else
          $(v).hide()

      return false
