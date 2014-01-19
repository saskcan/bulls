class Bull < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :public_comments, dependent: :destroy
end
