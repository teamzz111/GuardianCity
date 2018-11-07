class CreateTipoDenuncia < ActiveRecord::Migration[5.2]
  has_many :Denuncium
  def change
    create_table :tipo_denuncia do |t|
      t.integer :id_tipo_denuncia
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
