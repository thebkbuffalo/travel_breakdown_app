json.array!(@users) do |user|
  json.extract! user, :id, :email, :image, :name, :phone_number, :admin, :password_digest
  json.url user_url(user, format: :json)
end
