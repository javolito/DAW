class CreateAlquilers < ActiveRecord::Migration
  def change
    create_table :alquilers do |t|
      t.integer :id_coche
      t.integer :alquilador
      t.datetime :fecha_ini_anuncio
      t.datetime :fecha_fin_anuncio
      t.datetime :fecha_ini_alquiler
      t.datetime :fecha_fin_alquiler
      t.integer :precio

      t.timestamps
    end
  end
end
