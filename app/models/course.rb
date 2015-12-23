class Course < ActiveRecord::Base


	mount_uploader :picture, PictureUploader

	mount_uploader :bg_picture, PictureUploader
end
