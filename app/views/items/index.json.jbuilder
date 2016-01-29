json.array!(@items) do |item|
  json.extract! item, :id, :cantidad, :precio, :producto_id, :compra_id
  json.url item_url(item, format: :json)
end
