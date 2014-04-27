json.array!(@attendances) do |attendance|
  json.extract! attendance, :id, :in, :out
  json.url attendance_url(attendance, format: :json)
end
