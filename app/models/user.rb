class User < ApplicationRecord
	has_many :microposts
	validates :name, length: { maximum: 25 },
					presence: true
	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP },
					presence: true
	# validates :email_confimation, presence: true
end
