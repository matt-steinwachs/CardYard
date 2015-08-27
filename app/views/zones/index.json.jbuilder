json.array!(@zones) do |zone|
  json.extract! zone, :id, :user_id, :game_id, :zone_data
  json.url zone_url(zone, format: :json)
end
