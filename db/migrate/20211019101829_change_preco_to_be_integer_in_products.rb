class ChangePrecoToBeIntegerInProducts < ActiveRecord::Migration[6.0]
  def change
        change_column :products, :preco, :integer
  end
end
