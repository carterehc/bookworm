# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
    $("add_book").on("ajax:success", (event)->
        [data, status, xhr]=event.detail 
        $("add_book").append xhr.responseText
    ).on "ajax:error", (event)->
        $("#add_book").append "<p>Error adding book</p>"


 
$(document).ready
    $('#books_index').DataTable()
        
