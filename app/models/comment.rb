class Comment < ActiveRecord::Base
	belongs_to :bull
	belongs_to :user

	def byAdmin?
		if this.user_id == User.where('admin = ?', true).first.user_id
			true
		else
			false
		end
	end
end
