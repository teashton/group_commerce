class User < ApplicationRecord
  has_one :cart

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
