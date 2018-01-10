json.extract! category, :id, :name, :description, :photo_category, :created_at, :updated_at
json.url category_url(category, format: :json)
