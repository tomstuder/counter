json.array!(@counts) do |count|
  json.extract! count, :id, :name, :description, :count, :goal
  json.url count_url(count, format: :json)
end
