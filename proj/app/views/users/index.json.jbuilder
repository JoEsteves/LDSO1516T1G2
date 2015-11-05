json.array!(@users) do |user|
  json.extract! user, :id, :userID, :username, :password, :name, :email, :userTypeID
  json.url user_url(user, format: :json)
end
