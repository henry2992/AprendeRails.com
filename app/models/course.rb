class Course < ActiveRecord::Base

	extend FriendlyId
    friendly_id :course, use: :slugged


	mount_uploader :picture, PictureUploader
	has_many :chapters

	has_many :subchapters

	mount_uploader :picture, PictureUploader

	mount_uploader :bg_picture, PictureUploader
end
