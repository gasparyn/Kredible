json.array!(@reviews) do |review|
  json.extract! review, :id, :name, :rating, :content
  json.url review_url(review, format: :json)
end
