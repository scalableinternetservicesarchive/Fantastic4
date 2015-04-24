json.array!(@posts) do |post|
  json.extract! post, :id, :event_id, :date, :text_content, :vote_count
  json.url post_url(post, format: :json)
end
