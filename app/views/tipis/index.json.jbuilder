json.array!(@tipis) do |tipi|
  json.extract! tipi, :id, :title, :location, :description, :persons, :price, :image
  json.url tipi_url(tipi, format: :json)
end
