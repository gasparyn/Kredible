json.array!(@properties) do |property|
  json.extract! property, :id, :address, :description, :image_url, :price
  json.url property_url(property, format: :json)
end
