json.extract! ventilation_log, :id, :fan_id, :grid_id, :start_time, :end_time, :speed, :created_at, :updated_at
json.url ventilation_log_url(ventilation_log, format: :json)
