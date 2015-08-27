json.array!(@decks) do |deck|
  json.extract! deck, :id, :user_id, :name, :deck_data
  json.url deck_url(deck, format: :json)
end
