class HistorialDeAlquiler < ActiveRecord::Base
	belongs_to :car
	#belongs_to :user
	validates :id_coche, :alquilador, :fecha_ini_alquiler, :fecha_fin_alquiler, :precio,  presence: true
end
