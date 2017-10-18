json.extract! inventario, :id, :name, :cantidad, :descripcion, :created_at, :updated_at
json.url inventario_url(inventario, format: :json)
