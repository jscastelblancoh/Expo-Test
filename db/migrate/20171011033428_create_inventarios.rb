class CreateInventarios < ActiveRecord::Migration[5.1]
  def change
    create_table :inventarios do |t|
      t.string :name
      t.integer :cantidad
      t.text :descripcion

      t.timestamps
    end
  end
end
