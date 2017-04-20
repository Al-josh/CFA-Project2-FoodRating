class AddMealIdToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :meal_id, :integer
  end
end
