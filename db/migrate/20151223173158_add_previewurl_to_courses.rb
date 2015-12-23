class AddPreviewurlToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :preview_url, :string
  end
end
