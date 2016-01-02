class Codecast < ActiveRecord::Base

	extend FriendlyId
    friendly_id :codecast, use: :slugged

	mount_uploader :icon, PictureUploader
end
