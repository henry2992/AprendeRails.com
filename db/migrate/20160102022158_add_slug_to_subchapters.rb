class AddSlugToSubchapters < ActiveRecord::Migration
  def change
    add_column :subchapters, :slug, :string
    add_index :subchapters, :slug, unique: true
  end
end
