json.extract! product, :id, :titulo, :preco, :created_at, :updated_at
json.url product_url(product, format: :json)
