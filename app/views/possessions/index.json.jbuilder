json.array!(@possessions) do |possession|
  json.extract! possession, :id, :name, :model_num, :receipt_url, :est_value
  json.url possession_url(possession, format: :json)
end
