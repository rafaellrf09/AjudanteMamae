json.array!(@farmacia) do |farmacium|
  json.extract! farmacium, :id, :nome, :latitude, :longitude, :elevacao
  json.url farmacium_url(farmacium, format: :json)
end
