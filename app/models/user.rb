class User < ActiveRecord::Base
	has_many :compraventa
	has_many :cars
	has_many :alquilers
	has_many :pujas
	has_many :subasta, through: :puja
	validates :nombre, :DNI, :username, :password, :email, presence:true
end
