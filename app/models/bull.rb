class Bull < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :public_comments, dependent: :destroy
	has_many :pictures, dependent: :destroy

	def cover
		Picture.where('bull_id = ? AND cover = ?', id, 1).first
	end
end
