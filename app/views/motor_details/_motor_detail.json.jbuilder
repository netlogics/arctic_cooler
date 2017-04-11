json.extract! motor_detail, :id, :amperage, :horsepower, :voltage, :weight, :width, :height, :created_at, :updated_at
json.url motor_detail_url(motor_detail, format: :json)
