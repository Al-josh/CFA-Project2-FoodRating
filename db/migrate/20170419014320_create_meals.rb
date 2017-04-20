class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :title
      t.text :ingredients
      t.boolean :vegetarian
      t.boolean :vegan
      t.string :cuisine
      t.boolean :gluten_free
      t.boolean :takeaway
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
