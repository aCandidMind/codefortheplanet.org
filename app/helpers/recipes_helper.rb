module RecipesHelper

  def tags_value_string(form, context)
    # rocket_tag defines an association for the tags with the suffix _tags
    tag_association = form.object.send("#{context}_tags").select(:name)
    tag_association.map(&:name).join(',')
  end

end
