class CreatePujas < ActiveRecord::Migration
  def change
    create_table :pujas do |t|
      t.integer :id_subasta
      t.integer :pujador
      t.integer :valor
      t.datetime :fecha

      t.timestamps
    end
  end
end
