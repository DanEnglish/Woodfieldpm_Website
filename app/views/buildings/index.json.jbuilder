json.array!(@buildings) do |building|
  json.extract! building, :id, :name, :address
  json.url building_url(building, format: :json)
end
