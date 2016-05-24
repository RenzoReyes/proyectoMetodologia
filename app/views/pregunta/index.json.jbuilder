json.array!(@pregunta) do |preguntum|
  json.extract! preguntum, :id, :tipo, :ramo_id
  json.url preguntum_url(preguntum, format: :json)
end
