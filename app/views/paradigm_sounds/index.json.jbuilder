json.array!(@paradigm_sounds) do |paradigm_sound|
  json.extract! paradigm_sound, :paradigm_id, :description
  json.url paradigm_sound_url(paradigm_sound, format: :json)
end
