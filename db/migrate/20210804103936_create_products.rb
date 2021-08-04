class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :titulo
      t.decimal :preco

      t.timestamps
    end
  end
end
