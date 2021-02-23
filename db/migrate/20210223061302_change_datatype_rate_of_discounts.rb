class ChangeDatatypeRateOfDiscounts < ActiveRecord::Migration[6.0]
  def change
    change_column:discounts, :rate, :integer
  end
end
