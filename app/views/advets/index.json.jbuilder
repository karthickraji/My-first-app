json.array!(@advets) do |advet|
  json.extract! advet, :id, :name, :descripion, :price, :seller_id, :email, :img_url
  json.url advet_url(advet, format: :json)
end
