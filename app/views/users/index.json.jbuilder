json.array!(@users) do |user|
  json.extract! user, :id, :email, :fb_token
  json.url user_url(user, format: :json)
end
