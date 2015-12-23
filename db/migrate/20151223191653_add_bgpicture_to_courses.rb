class AddBgpictureToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :bg_picture, :string
  end
end
