module RecipesHelper

  def multiselection_hint
    content_tag("noscript") do
      "Multiple tags can be selected while holding the Cmd or Ctrl key"
    end
  end

end
