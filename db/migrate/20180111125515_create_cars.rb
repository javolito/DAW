class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :propietario
      t.string :marca
      t.string :modelo
      t.integer :año
      t.string :combustible
      t.string :cambio
      t.integer :km
      t.text :descripcion

      t.timestamps
    end
  end
end
