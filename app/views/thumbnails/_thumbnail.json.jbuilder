json.extract! thumbnail, :id, :title, :body, :main_image, :thumb_image, :created_at, :updated_at
json.url thumbnail_url(thumbnail, format: :json)
