class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.integer :telefono
      t.string :correo
      t.integer :cargo
      t.string :fecha_nacimiento

      t.timestamps
    end
    add_index :usuarios, :correo, unique: true
  end
end
