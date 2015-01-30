# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(window).ready ->
  nowTemp = new Date()
  now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0)
  checkin = $("#checkin").datepicker(onRender: (date) ->
    (if date.valueOf() < now.valueOf() then "disabled" else "")
  ).on("changeDate", (ev) ->
    if ev.date.valueOf() > checkout.date.valueOf()
      newDate = new Date(ev.date)
      newDate.setDate newDate.getDate() + 1
      checkout.setValue newDate
    checkin.hide()
    $("#checkout")[0].focus()
    return
  ).data("datepicker")
  checkout = $("#checkout").datepicker(onRender: (date) ->
    (if date.valueOf() <= checkin.date.valueOf() then "disabled" else "")
  ).on("changeDate", (ev) ->
    checkout.hide()
    return
  ).data("datepicker")
  return