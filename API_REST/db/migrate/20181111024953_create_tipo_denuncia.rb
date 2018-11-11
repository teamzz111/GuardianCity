class CreateTipoDenuncia < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_denuncia do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
