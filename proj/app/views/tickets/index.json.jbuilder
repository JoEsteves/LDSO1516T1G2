json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :ticketID, :title, :ticketCategoryID, :description, :status, :location, :userID
  json.url ticket_url(ticket, format: :json)
end
