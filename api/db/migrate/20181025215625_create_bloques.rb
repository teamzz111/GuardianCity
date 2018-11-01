class CreateBloques < ActiveRecord::Migration[5.2]
  def change
    create_table :bloques do |t|
      t.integer :id
      t.string :bloque
      t.timestamp :hora
      t.string :guid

      t.timestamps
    end
  end
end
