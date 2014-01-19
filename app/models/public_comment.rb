class PublicComment < ActiveRecord::Base
	belongs_to :bull
	belongs_to :user
end
