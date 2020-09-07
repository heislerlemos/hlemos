class CreateComentarios < ActiveRecord::Migration[6.0]
  def change
    create_table :comentarios do |t|
      t.string :comentariador
      t.text :corpo
      t.references :blog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
