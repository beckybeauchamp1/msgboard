class User < ActiveRecord::Base
	# Typically I place these underneath devise :database_authenticatable, etc
	has_many :messages
	has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
