class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.text :description
      t.string :picture_url
      t.string :artist

      t.timestamps
    end
  end
end
