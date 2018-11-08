class CreateTipoDenuncia < ActiveRecord::Migration[5.2]

  def change
    create_table :tipo_denuncia do |t|
      t.integer :id_tipo_denuncia
      t.string :nombre
      t.string :descripcion
      has_many :Denuncium
      t.timestamps  
    end
  end
end
