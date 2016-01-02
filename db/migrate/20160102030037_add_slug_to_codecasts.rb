class AddSlugToCodecasts < ActiveRecord::Migration
  def change
    add_column :codecasts, :slug, :string
    add_index :codecasts, :slug, unique: true
  end
end
