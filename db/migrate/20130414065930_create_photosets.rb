class CreatePhotosets < ActiveRecord::Migration
  def change
    create_table :photosets do |t|
      t.string :title
      t.integer :set_id
      t.text :description

      t.timestamps
    end
  end
end
