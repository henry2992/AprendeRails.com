class AddUrlToSubchapters < ActiveRecord::Migration
  def change
    add_column :subchapters, :url, :string
  end
end
