class PhotosetsPhotos < ActiveRecord::Migration
  def change
    create_table :photosets_photos do |t|
      t.integer :photo_id
      t.integer :photoset_id
    end
  end
end
