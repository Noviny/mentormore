json.array!(@users) do |user|
  json.extract! user, :id, :name, :mentor, :mentee, :password_digest, :admin, :description
  json.url user_url(user, format: :json)
end
