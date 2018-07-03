# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $(".teachers_selection").on "change", ->
    $.ajax
      url: "/get_courses"
      type: "GET"
      dataType: "script"
      data:
        courses: $(".courses_selection option:selected").val()
