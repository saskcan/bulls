json.array!(@comments) do |comment|
  json.extract! comment, :id, :user_id, :bull_id, :content
  json.url comment_url(comment, format: :json)
end
