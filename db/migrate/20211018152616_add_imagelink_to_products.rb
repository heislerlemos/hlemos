class AddImagelinkToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :imagelink, :string
  end
end
