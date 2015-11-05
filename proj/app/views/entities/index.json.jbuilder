json.array!(@entities) do |entity|
  json.extract! entity, :id, :entityID, :name, :description, :entityCategoryID, :integer
  json.url entity_url(entity, format: :json)
end
