<%= render 'layouts/header' %>

json.extract! @user, :id, :email, :image, :name, :phone_number, :admin, :password_digest, :created_at, :updated_at
