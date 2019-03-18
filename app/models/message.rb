class Message < ApplicationRecord
	 include ApplyFilters::Base
	 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  before_save { email.downcase! }

  scope :last_name, -> (last_name) { where last_name: last_name }
  scope :email, -> (email) { where email: email }
 
	 validates :first_name, presence: true, length: { maximum: 50 }
	 validates :last_name, presence: true, length: { maximum: 50 }
	 validates :email,
	 presence: true,
	 uniqueness: true,
	 length: { maximum: 255 },
	 format: { with: VALID_EMAIL_REGEX }

end
