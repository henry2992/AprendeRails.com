class AddTitlesToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :principal_title, :string
    add_column :courses, :secondary_title, :string
  end
end
