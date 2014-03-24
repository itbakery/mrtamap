json.array!(@phase_details) do |phase_detail|
  json.extract! phase_detail, :id, :no, :title, :distance, :status, :description
  json.url phase_detail_url(phase_detail, format: :json)
end
