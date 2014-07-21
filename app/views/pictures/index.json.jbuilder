json.array!(@pictures) do |picture|
  json.extract! picture, :id, :title, :description, :picture_url, :artist
  json.url picture_url(picture, format: :json)
end
