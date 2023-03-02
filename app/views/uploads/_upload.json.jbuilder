json.extract! upload, :id, :current_location, :petroleum_company_name, :station_id, :fuel_type, :created_at, :updated_at
json.url upload_url(upload, format: :json)
