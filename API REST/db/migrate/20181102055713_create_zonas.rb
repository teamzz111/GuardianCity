class CreateZonas < ActiveRecord::Migration[5.2]
  has_many :Denuncium
  def change
    create_table :zonas do |t|
      t.integer :id_zona
      t.string :nombre
      t.string :direccion
      t.string :localidad

      t.timestamps
    end
  end
end
