json.extract! asignatura_registro, :id, :nombre, :clave, :creditos, :programa_posgrado_registro_id, :created_at, :updated_at
json.url asignatura_registro_url(asignatura_registro, format: :json)
