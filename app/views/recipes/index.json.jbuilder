@tags.each do |tag|
  json.set! tag.name.titleize do
    json.array!(tag.taggings) do |tagging|
      recipe = tagging.taggable
      json.extract! recipe, :id, :name, :description
      json.url recipe_url(recipe, format: :json)
    end
  end
end

