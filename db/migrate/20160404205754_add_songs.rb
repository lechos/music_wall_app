class AddSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.text :description
      t.string :url
      t.string :image
      t.timestamps null: false
    end
  end
end
