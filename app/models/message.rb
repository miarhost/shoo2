class Message < ApplicationRecord

EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i


    before_save { email.downcase! }

	validates :first_name, presence: true, length: { maximum: 50 }
	validates :email,
	presence: true,
	uniqueness: true,
	length: { maximum: 255 },
	format: { with: EMAIL }
	validates :amount, presence: true, numericality: { only_integer: true }, allow_blank: false
end
