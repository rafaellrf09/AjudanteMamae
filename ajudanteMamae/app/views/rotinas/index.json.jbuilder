json.array!(@rotinas) do |rotina|
  json.extract! rotina, :id, :nome, :bebes_id
  json.url rotina_url(rotina, format: :json)
end
