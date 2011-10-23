# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $(".result").hover (->
    $(this).find("button").fadeIn 100
  ), ->
    $(this).find("button").hide()

  $(".search").click ->
    $(".container").fadeOut 300, ->
    $(".container").load("index.html .container").fadeIn 200

  $(".fiveguys").click ->
    $(".container").fadeOut 300, ->
    $(".container").load("2_verify_business.html .container").fadeIn()

  $(".complaint_button").click ->
    $(".container").fadeOut 300, ->
    $(".container").load("3_file_complaint.html .container").fadeIn()
