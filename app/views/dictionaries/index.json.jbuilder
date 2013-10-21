json.array!(@dictionaries) do |dictionary|
  json.extract! dictionary, :name, :description, :identifier, :author_id
  json.url dictionary_url(dictionary, format: :json)
end
