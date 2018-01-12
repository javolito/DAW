class Compraventum < ActiveRecord::Base
	belongs_to :user
	belongs_to :car
	validates :id_coche, presence:true, uniqueness:true
	validates :fecha_publicacion, :precio, presence: {message: "El campo no puede quedar vacío"}

	scope :compra_disponible, ->{where("compraventa.comprador IS NULL")}
	
end
