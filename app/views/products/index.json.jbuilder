json.array!(@products) do |product|
  json.extract! product, :id, :title, :category_id
  json.url product_url(product, format: :json)
end
