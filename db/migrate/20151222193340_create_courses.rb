class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.string :picture
      t.string :level

      t.timestamps null: false
    end
  end
end
