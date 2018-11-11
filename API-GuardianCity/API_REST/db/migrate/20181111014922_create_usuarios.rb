class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nombre ,null: false
      t.string :apellido ,null: false,:limit => 55
      t.integer :telefono
      t.string :correo ,null: false
      t.integer :cargo ,null: false
      t.string :fecha_nacimiento

      t.timestamps
    end
    add_index :usuarios, :correo, unique: true
  end
end
