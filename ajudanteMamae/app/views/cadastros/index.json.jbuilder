json.array!(@cadastros) do |cadastro|
  json.extract! cadastro, :id, :nome, :senha, :telefone
  json.url cadastro_url(cadastro, format: :json)
end
