json.array!(@station_details) do |station_detail|
  json.extract! station_detail, :id, :code, :title, :latitude, :longitude, :description
  json.url station_detail_url(station_detail, format: :json)
end
