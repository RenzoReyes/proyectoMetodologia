json.array!(@estudiantes) do |estudiante|
  json.extract! estudiante, :id, :nombre, :password, :email
  json.url estudiante_url(estudiante, format: :json)
end
