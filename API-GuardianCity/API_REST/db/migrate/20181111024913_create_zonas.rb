class CreateZonas < ActiveRecord::Migration[5.2]
  def change
    create_table :zonas do |t|
      t.string :nombre ,null: false
      t.string :direccion ,null: false
      t.string :localidad ,null: false

      t.timestamps
    end
    add_index :zonas, :direccion, unique: true
  end
end
