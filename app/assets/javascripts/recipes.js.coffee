# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  tag_fields = $('select.tags')
  tag_fields.each (index, element) =>
    select = $(element)
    textNodes = select.find('option').contents()
    tags = $.map(textNodes, (element) =>
      element.textContent)
    input = $(window[element.id + "_html"])
    select.replaceWith(input)
    input.select2(tags: tags)