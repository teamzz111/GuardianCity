class Usuario < ApplicationRecord
    has_many :denuncium
    has_secure_password
end
