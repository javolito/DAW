class Subastum < ActiveRecord::Base
	has_many :pujas
	belongs_to :user
	belongs_to :car
	validates :id_coche, :fecha_publicacion, :fecha_limite, :compra_ya,  presence: true

	scope :subastas_disponible, ->{where("subasta.comprador IS NULL")}
end
