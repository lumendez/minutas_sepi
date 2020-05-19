json.extract! user, :id, :nombre, :primer_apellido, :segundo_apellido, :curp, :tipo_usuario_id, :alumno_id, :created_at, :updated_at
json.url user_url(user, format: :json)
