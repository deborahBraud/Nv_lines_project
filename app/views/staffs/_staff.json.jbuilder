json.extract! staff, :id, :url, :topic, :staff_name, :staff_type, :staff_header, :staff_adress, :staff_postalcode, :staff_city, :staff_country, :institut_name, :created_at, :updated_at
json.url staff_url(staff, format: :json)
