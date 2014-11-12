require 'test_helper'
require 'tag_steps'

feature "Recipe has independent tag taxonomies" do
  include TagSteps

  TAG_SECTION_CLASS = 'tag_section'

  given(:recipe) { recipes(:one) }
  given(:tag_name) { "Extensions & Plugins" }
  given(:tag_as_id) { tag_name.parameterize('_') }

  background do
    tag_recipe(tag_name, :tech) # tech should be the standard taxonomy
  end

  scenario "tagged recipe appears under standard taxonomy when none was chosen" do
    visit recipes_path
    within "##{tag_as_id}.#{TAG_SECTION_CLASS}" do
      assert_content(recipe.name)
    end
  end

  scenario "tagged recipe doesn't appear under different taxonomy" do
    visit recipes_path(taxonomy: :purposes)
    assert_no_css("##{tag_as_id}.#{TAG_SECTION_CLASS}")
    assert_no_content(recipe.name)
  end

  feature "tagging in different taxonomies" do
    scenario "tagging with multiple taxonomies works" do
      taxonomies = [:tech, :purposes]
      taxonomies.each do |taxonomy|
        tag_name  = "#{taxonomy} #{tag_name}"
        tag_as_id = tag_name.parameterize('_')
        tag_recipe(tag_name, taxonomy)
        visit recipes_path(taxonomy: taxonomy)
        within "##{tag_as_id}.#{TAG_SECTION_CLASS}" do
          assert_content(recipe.name)
        end
      end
    end
  end
end
