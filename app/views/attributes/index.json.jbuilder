json.array!(@attributes) do |attribute|
  json.extract! attribute, :name, :author, :description, :identifier
  json.url attribute_url(attribute, format: :json)
end
