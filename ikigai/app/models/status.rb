class Status < ActiveRecord::Base
	belongs_to :documentation
	belongs_to :user
end
