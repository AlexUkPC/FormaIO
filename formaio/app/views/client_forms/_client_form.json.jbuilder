json.extract! client_form, :id, :name, :total_price, :status, :is_payed, :client_form_type_id, :properties, :created_at, :updated_at
json.url client_form_url(client_form, format: :json)
