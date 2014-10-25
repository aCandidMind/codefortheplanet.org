module TagSteps
  def tag_recipe(tag, taxonomy)
    recipe.send("#{taxonomy}=", [tag])
    recipe.save!
    recipe.reload
    recipe.send(taxonomy).must_include(tag.downcase)
  end
end