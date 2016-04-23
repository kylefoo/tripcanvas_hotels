json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :name, :city_id, :aasm, :slug, :description, :address
  json.url hotel_url(hotel, format: :json)
end
