module RecipesHelper

  def multiselection_hint
    content_tag("noscript") do
      "Multiple tags can be selected while holding the Cmd or Ctrl key"
    end
  end

  def text_input_for_tags(form, context)
    tags_string = form.object.send(context).map(&:name).join(',')
    form.input context, as: :hidden, input_html: {value: tags_string, class: 'select2-offscreen'}
  end

end
