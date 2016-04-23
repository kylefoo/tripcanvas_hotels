json.array!(@countries) do |country|
  json.extract! country, :id, :name, :country_id, :status, :slug, :description
  json.url country_url(country, format: :json)
end
