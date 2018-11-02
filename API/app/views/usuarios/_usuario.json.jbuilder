json.extract! usuario, :id, :cedula, :nombre, :apellido, :telefono, :correo, :cargo, :fecha_nacimiento, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
