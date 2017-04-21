class ChangeAddressTypeInRestaurant < ActiveRecord::Migration[5.0]
  def self.up
      change_table :restaurants do |t|
        t.change :address, :string
      end
    end
    def self.down
      change_table :restaurants do |t|
        t.change :address, :text
      end
    end
end
