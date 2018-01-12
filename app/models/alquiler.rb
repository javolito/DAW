class Alquiler < ActiveRecord::Base
	belongs_to :car
	belongs_to :user
	validates :id_coche, :fecha_ini_anuncio, :fecha_fin_anuncio, :fecha_ini_alquiler, :fecha_fin_alquiler, :precio,  presence: true

	scope :alquileres_disponible, ->{where("alquilers.alquilador IS NULL")}
end
