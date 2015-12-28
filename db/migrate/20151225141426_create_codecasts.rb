class CreateCodecasts < ActiveRecord::Migration
  def change
    create_table :codecasts do |t|
      t.string :title
      t.text :description
      t.string :icon
      t.string :level
      t.string :video_url
      t.string :color

      t.timestamps null: false
    end
  end
end
