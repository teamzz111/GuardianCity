class CreateZonas < ActiveRecord::Migration[5.2]

  def change
    create_table :zonas do |t|
      t.integer :id_zona
      t.string :nombre
      t.string :direccion
      t.string :localidad

      t.timestamps
      has_many :Denuncium
    end
  end
end
