class Denuncium < ApplicationRecord
  belongs_to :zona
  belongs_to :usuario
  belongs_to :tipo_denuncia
end
