class CreateUsuarios < ActiveRecord::Migration[5.2]
  has_many :Denuncium
  def change
    create_table :usuarios do |t|
      t.integer :cedula
      t.string :nombre
      t.string :apellido
      t.integer :telefono
      t.string :correo
      t.integer :cargo
      t.date :fecha_nacimiento

      t.timestamps
    end
  end
end
