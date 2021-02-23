class CreateDiscounts < ActiveRecord::Migration[6.0]
  def change
    create_table :discounts do |t|
      t.integer :price
      t.float :rate

      t.timestamps
    end
  end
end
