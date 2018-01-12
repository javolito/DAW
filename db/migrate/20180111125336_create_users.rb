class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :DNI
      t.string :username
      t.string :password
      t.integer :edad
      t.integer :telefono
      t.string :email

      t.timestamps
    end
  end
end
