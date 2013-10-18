json.array!(@authors) do |author|
  json.extract! author, :name, :email, :login, :password
  json.url author_url(author, format: :json)
end
