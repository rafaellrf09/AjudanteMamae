json.array!(@bebes) do |bebe|
  json.extract! bebe, :id, :nome, :idade
  json.url bebe_url(bebe, format: :json)
end
