class CreateHistorialDeAlquilers < ActiveRecord::Migration
  def change
    create_table :historial_de_alquilers do |t|
      t.integer :id_coche
      t.integer :alquilador
      t.datetime :fecha_ini_alquiler
      t.datetime :fecha_fin_alquiler
      t.integer :precio

      t.timestamps
    end
  end
end
