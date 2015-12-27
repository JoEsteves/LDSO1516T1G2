json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :title, :location, :long, :lat, :description, :picture, :date, :user_id
  json.url ticket_url(ticket, format: :json)
end