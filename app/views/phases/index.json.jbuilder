json.array!(@phases) do |phase|
  json.extract! phase, :id, :code
  json.url phase_url(phase, format: :json)
end
