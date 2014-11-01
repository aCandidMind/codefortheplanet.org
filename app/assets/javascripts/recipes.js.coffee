# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  tag_fields = $('input.tags')
  tag_fields.each (index, element) =>
    input = $(element)
    tags = window[element.id + '_values']
    input.select2(tags: tags)