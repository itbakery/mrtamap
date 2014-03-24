json.array!(@line_details) do |line_detail|
  json.extract! line_detail, :id, :title, :description
  json.url line_detail_url(line_detail, format: :json)
end
