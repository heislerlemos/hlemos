class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :titulo
      t.text :texto

      t.timestamps
    end
  end
end
