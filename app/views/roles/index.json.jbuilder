json.array!(@roles) do |role|
  json.extract! role, :id, :start_date, :end_date, :amount_owed, :permission, :paid
  json.url role_url(role, format: :json)
end
