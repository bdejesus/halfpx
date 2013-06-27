class HomeController < ApplicationController

  def index
    photoset = Photoset.where(title: 'Trips to Tahoe')
    @photos = Photo.where(photoset_id: photoset)
  end

  def selected_photos_bw
    @photoset = Photoset.where(title: 'Black & White')
    @photos = Photoset.first
  end

  def trips_to_tahoe
    @photoset = Photoset.where(title: 'Trips to Tahoe')
  end

  def san_francisco
  end

  def stream



  end

end