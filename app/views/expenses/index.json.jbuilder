json.array!(@expenses) do |expense|
  json.extract! expense, :id, :item, :amount, :description, :start_date, :end_date, :calculation_type
  json.url expense_url(expense, format: :json)
end
