class Course < ActiveRecord::Base

	mount_uploader :picture, PictureUploader
	has_many :chapters

	mount_uploader :picture, PictureUploader

	mount_uploader :bg_picture, PictureUploader
end
