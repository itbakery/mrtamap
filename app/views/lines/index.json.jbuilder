json.array!(@lines) do |line|
  json.extract! line, :id, :code
  json.url line_url(line, format: :json)
end
