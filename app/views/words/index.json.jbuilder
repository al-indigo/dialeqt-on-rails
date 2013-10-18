json.array!(@words) do |word|
  json.extract! word, :word, :transcription, :translation, :tag, :attribute_id
  json.url word_url(word, format: :json)
end
