json.extract! meal, :id, :title, :ingredients, :vegetarian, :vegan, :cuisine, :gluten_free, :takeaway, :restaurant_id, :created_at, :updated_at
json.url restaurans_meal_url(meal, format: :json)
