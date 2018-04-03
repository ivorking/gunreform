class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    has_secure_password
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_and_belongs_to_many :pols
    belongs_to :state
    validates :email, :presence => true, :uniqueness => true
end
