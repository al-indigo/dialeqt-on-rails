json.array!(@paradigm_praats) do |paradigm_praat|
  json.extract! paradigm_praat, :paradigm_id, :description
  json.url paradigm_praat_url(paradigm_praat, format: :json)
end
