json.array!(@companies) do |company|
  json.extract! company, :id, :title, :product_id
  json.url company_url(company, format: :json)
end
