class User < ApplicationRecord
	validates :username, presence: true, length: { minimum: 3, maximum: 25 }, uniqueness: { case_sensitive: true }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 25 }, uniqueness: { case_sensitive: true }, format: { with: VALID_EMAIL_REGEX }
end