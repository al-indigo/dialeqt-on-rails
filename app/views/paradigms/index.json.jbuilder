json.array!(@paradigms) do |paradigm|
  json.extract! paradigm, :word, :transcription, :translation, :word_id
  json.url paradigm_url(paradigm, format: :json)
end
