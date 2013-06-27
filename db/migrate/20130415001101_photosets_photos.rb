class PhotosetsPhotos < ActiveRecord::Migration
  def change
    create_table :photosets_photos do |t|
      t.string   :photo_id
      t.string   :photoset_id
    end
  end
end
