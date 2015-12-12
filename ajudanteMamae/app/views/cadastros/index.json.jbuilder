json.array!(@cadastros) do |cadastro|
  json.extract! cadastro, :id, :usuario, :senha
  json.url cadastro_url(cadastro, format: :json)
end
