class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string  :title
      t.text    :description
      t.string  :small_url
      t.string  :medium_url
      t.string  :large_url
      t.string  :square_url
      t.string  :thumbnail_url
      t.string  :original_url
      t.integer :photoset_id
      t.string  :photo_id

      t.timestamps
    end
  end
end
