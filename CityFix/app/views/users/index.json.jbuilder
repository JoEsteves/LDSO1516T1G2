json.array!(@users) do |user|
  json.extract! user, :id, :fname, :lname, :password, :picture, :banned, :email
  json.url user_url(user, format: :json)
end
