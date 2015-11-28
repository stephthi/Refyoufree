class User < ActiveRecord::Base
	has_secure_password

	validates :first_name, :last_name, :email, presence: true
	has_one :documentation
	has_one :status
	has_many :documentations, through: :status
end
