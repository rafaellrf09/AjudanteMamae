json.array!(@dieta) do |dietum|
  json.extract! dietum, :id, :nome, :bebe_id
  json.url dietum_url(dietum, format: :json)
end
