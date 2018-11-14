class CreateDenuncia < ActiveRecord::Migration[5.2]

  def change
    create_table :denuncia do |t|
      t.integer :id_denuncia
      t.integer :usuario_cedula
      t.integer :tipo_denuncia
      t.date :fecha
      t.text :descripcion_asalto
      t.integer :zona
      t.text :descripcion_asaltante


      t.timestamps
    end
  end
end
