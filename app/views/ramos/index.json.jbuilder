json.array!(@ramos) do |ramo|
  json.extract! ramo, :id, :nombre, :estudiante_id
  json.url ramo_url(ramo, format: :json)
end
