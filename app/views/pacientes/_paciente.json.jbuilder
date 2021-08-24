json.extract! paciente, :id, :nome, :endereco, :contato, :idade, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
