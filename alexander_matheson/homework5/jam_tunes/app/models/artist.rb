class Artist < ActiveRecord::Base
	belongs_to :record_label
	belongs_to :genre
	has_many :tracks, dependent: :destroy
	validates_uniqueness_of :name
	validates_presence_of :name

	def self.search(search)
		if search
			self.where('name LIKE ?', "%#{search}%")
		else
			self.all
		end
	end
end
