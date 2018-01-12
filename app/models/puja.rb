class Puja < ActiveRecord::Base
	belongs_to :subastum
	belongs_to :user
	validates :id_subasta, :pujador, :valor, :fecha,  presence: true

	scope :historial_pujas, ->{where("subasta.comprador IS NULL")}

end
