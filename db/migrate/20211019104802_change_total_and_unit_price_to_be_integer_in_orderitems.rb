class ChangeTotalAndUnitPriceToBeIntegerInOrderitems < ActiveRecord::Migration[6.0]
  def change
            change_column :order_items, :total, :integer
            change_column :order_items, :unit_price, :integer
  end
end
