json.array!(@outlets) do |outlet|
  json.extract! outlet, :id, :title, :description, :price, :outlet, :company_id
  json.url outlet_url(outlet, format: :json)
end
