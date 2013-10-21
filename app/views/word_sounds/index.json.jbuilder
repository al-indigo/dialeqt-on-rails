json.array!(@word_sounds) do |word_sound|
  json.extract! word_sound, :word_id, :description
  json.url word_sound_url(word_sound, format: :json)
end
