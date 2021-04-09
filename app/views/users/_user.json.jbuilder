json.extract! user, :id, :first_name, :last_name, :email
json.url user_url(staff, format: :json)
