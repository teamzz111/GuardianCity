class Usuario < ApplicationRecord
    include BCrypt
    has_many :denuncium
    has_secure_password
    attr_accessor :password_hash

    def password_digest
      @password ||= Password.new(password_hash)
    end

    def password_digest=(new_password)
      @password = Password.create(new_password)
      self.password_hash = @password
    end

end
