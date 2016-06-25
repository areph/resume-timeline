json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :kill, :pr
  json.url user_url(user, format: :json)
end
