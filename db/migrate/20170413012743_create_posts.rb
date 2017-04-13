class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :ingredients
      t.references :user, foreign_key: true
      t.boolean :vegetarian
      t.boolean :vegan
      t.string :cuisine
      t.boolean :gluten_free
      t.boolean :takeaway

      t.timestamps
    end
  end
end
