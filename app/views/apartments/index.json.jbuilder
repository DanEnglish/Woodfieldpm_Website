json.array!(@apartments) do |apartment|
  json.extract! apartment, :id, :apt_number, :for_rent, :building_id
  json.url apartment_url(apartment, format: :json)
end
