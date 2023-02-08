class User < ApplicationRecord
	require "securerandom"

	has_secure_password
	#mount_uploader :avatar, AvatarUploader
	validates :email, presence: true
	validates :username, presence: true, uniqueness: true
	validates :password, presence: true

end
