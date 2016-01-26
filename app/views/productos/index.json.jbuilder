json.array!(@productos) do |producto|
  json.extract! producto, :id, :nombre, :precio, :stock
  json.url producto_url(producto, format: :json)
end
