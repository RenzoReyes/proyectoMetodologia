json.array!(@competencia) do |competencium|
  json.extract! competencium, :id, :tipo, :ramo_id
  json.url competencium_url(competencium, format: :json)
end
