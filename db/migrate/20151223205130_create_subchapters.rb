class CreateSubchapters < ActiveRecord::Migration
  def change
    create_table :subchapters do |t|
      t.string :title
      t.belongs_to :chapter, index: true
      t.belongs_to :course, index: true

      t.timestamps null: false
    end
  end
end
