json.array!(@classifications) do |classification|
  json.extract! classification, :name, :majority
  json.url classification_url(classification, format: :json)
end
