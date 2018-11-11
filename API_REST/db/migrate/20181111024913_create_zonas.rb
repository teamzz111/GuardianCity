class CreateZonas < ActiveRecord::Migration[5.2]
  def change
    create_table :zonas do |t|
      t.string :nombre
      t.string :direccion
      t.string :localidad

      t.timestamps
    end
    add_index :zonas, :direccion, unique: true
  end
end
