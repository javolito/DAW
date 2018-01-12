class Car < ActiveRecord::Base
	has_one :compraventa
	belongs_to :user
	has_one :alquiler
	has_many :historial_de_alquiler
	has_one :subasta
	validates :propietario, presence: true
	validates :año, presence: true, length: { is: 4 }
	validates :marca, :modelo, :combustible, :km,  presence: {message: "El campo no puede quedar vacío"}
end
