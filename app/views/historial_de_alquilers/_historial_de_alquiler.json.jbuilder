json.extract! historial_de_alquiler, :id, :id_coche, :alquilador, :fecha_ini_alquiler, :fecha_fin_alquiler, :precio, :created_at, :updated_at
json.url historial_de_alquiler_url(historial_de_alquiler, format: :json)
