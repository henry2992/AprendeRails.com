class Chapter < ActiveRecord::Base

	

	belongs_to :course

	has_many :subchapters


end
