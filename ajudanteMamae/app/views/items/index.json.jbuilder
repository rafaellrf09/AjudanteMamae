json.array!(@items) do |item|
  json.extract! item, :id, :hora, :dietum_id
  json.url item_url(item, format: :json)
end
