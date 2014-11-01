module RecipesHelper

  def tags_value_string(form, context)
    form.object.send(context).map(&:name).join(',')
  end

end
