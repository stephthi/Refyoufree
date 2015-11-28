class Documentation < ActiveRecord::Base
	has_one :status
	has_one :user
end
