json.array!(@posts) do |post|
  json.id         post.id
  json.title      post.title
  json.subtitle   post.subtitle
  json.body       post.body

  json.category   post.category, :id, :name
  json.authors    post.authors, :id, :name, :describe
  json.images     post.images, :id, :name, :file, :file_content_type
  json.steps      post.steps, :id, :body, :order
  json.tags       post.tags, :id, :name

  json.created_at post.created_at
  json.updated_at post.updated_at
end
