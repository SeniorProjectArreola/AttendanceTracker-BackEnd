json.array!(@events) do |event|
  json.extract! event, :id, :name, :start, :end, :beacon
  json.url event_url(event, format: :json)
end
