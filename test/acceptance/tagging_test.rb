require 'test_helper'
require 'tag_steps'

feature "Recipe Topic Tags" do
  include TagSteps

  given(:recipe) { recipes(:one) }

  scenario "tagging a recipe makes it appear under that tag section" do
    tag_name = "Extensions & Plugins"
    tag_as_id = tag_name.parameterize('_')
    tag_recipe(tag_name, :tech)
    visit recipes_path
    within "##{tag_as_id}.tag" do
      assert_content(recipe.name)
    end
  end
end