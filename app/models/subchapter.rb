class Subchapter < ActiveRecord::Base

	belongs_to :chapter
	belongs_to :course
end
