class Subchapter < ActiveRecord::Base

	extend FriendlyId
    friendly_id :subchapter, use: :slugged


	belongs_to :chapter
	belongs_to :course
end
