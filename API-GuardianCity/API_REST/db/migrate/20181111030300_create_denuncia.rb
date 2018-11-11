class CreateDenuncia < ActiveRecord::Migration[5.2]
  def change
    create_table :denuncia do |t|
      t.date :fecha ,null: false
      t.string :descripcion_asalto
      t.string :descripcion_asaltante
      t.references :zona, foreign_key: true
      t.references :usuario, foreign_key: true ,null: false
      t.references :tipo_denuncia, foreign_key: true ,null: false

      t.timestamps
    end
  end
end
