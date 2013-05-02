class HomeController < ApplicationController

  def index
    @photoset = Photoset.find(2)
  end

  def selected_photos_bw
    @photoset = Photoset.find(1)
    @photos = Photoset.first
  end

  def trips_to_tahoe
    @photoset = Photoset.find(2)
  end

  def san_francisco
  end

  def stream



  end

end