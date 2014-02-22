class Cow < ActiveRecord::Base
	belongs_to :bull
	belongs_to :sire, class_name: "Cow", foreign_key: "sire_id"
	belongs_to :dam, class_name: "Cow", foreign_key: "dam_id"
	has_many :kine, foreign_key: "dam_id"
	has_many :kine, foreign_key: "sire_id"
	has_one :bull, foreign_key: "dam_id"
	has_one :bull, foreign_key: "sire_id"
	validates_uniqueness_of :name
end
