console.log "this is content_script.js"

sendMessage = (data)->
  chrome.runtime.sendMessage data

setEvents = ->
  currentItem = document.getElementById("item1")

  unless currentItem
    return

  items = document.getElementsByClassName("item")

  for i in [0..items.length - 1]
    items[i].addEventListener "click", (e)->
      e.preventDefault()
      target = e.target
      value = target.dataset.value
      sendMessage
        # target: target # can't send DOM
        value: target.dataset.value

  undefined

setEvents()

