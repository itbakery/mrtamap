json.array!(@stations) do |station|
  json.extract! station, :id, :code
  json.url station_url(station, format: :json)
end
