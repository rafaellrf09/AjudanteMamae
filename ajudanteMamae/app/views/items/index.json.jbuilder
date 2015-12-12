json.array!(@items) do |item|
  json.extract! item, :id, :nome, :hora, :dieta_id
  json.url item_url(item, format: :json)
end
