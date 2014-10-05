<%= render 'layouts/header' %>

json.array!(@events) do |event|
  json.extract! event, :id, :name, :users_title, :start_date, :end_date, :location, :image
  json.url event_url(event, format: :json)
end
