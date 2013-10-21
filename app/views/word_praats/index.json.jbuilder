json.array!(@word_praats) do |word_praat|
  json.extract! word_praat, :word_id, :description
  json.url word_praat_url(word_praat, format: :json)
end
