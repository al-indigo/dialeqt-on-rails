json.array!(@tales) do |tale|
  json.extract! tale, :name, :tale
  json.url tale_url(tale, format: :json)
end
