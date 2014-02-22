class Bull < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :public_comments, dependent: :destroy
	has_many :pictures, dependent: :destroy
	belongs_to :sire, class_name: "Cow", foreign_key: "sire_id"
	belongs_to :dam, class_name: "Cow", foreign_key: "dam_id"

	def cover
		Picture.where('bull_id = ? AND cover = ?', id, 1).first
	end
end
