module TagSteps
  def tag_recipe(tag)
    recipe.topics = [tag]
    recipe.save!
    recipe.reload
    recipe.topics.must_include(tag.downcase)
  end
end