desc "Fetch photos for the galleries"
task :fetch => [:environment] do
  require 'flickraw'


  FlickRaw.api_key="94609ed90a8ffcb833b0599363a3e64f"
  FlickRaw.shared_secret="308cd6e9438cc667"


  sets = ['72157633063337923', '72157633116280092']

  @photos = []

  puts "\nGetting photos"
  sets.each_with_index do |set, set_index|

    photoset = flickr.photosets.getInfo(photoset_id: set)
    puts "\nGetting photos from the set '#{photoset.title}'\n\n"
    photoset_obj = Photoset.create!(title: photoset.title, description: photoset.description, set_id: photoset.id)

    group = flickr.photosets.getPhotos(photoset_id: set)
    group.photo.each_with_index do |photo|
      puts "#{photoset.title} - #{photo.title.inspect}"
      info = flickr.photos.getInfo(photo_id: photo['id'])

      photo = {
        title:          info.title,
        description:    info.description,
        square_url:     FlickRaw.url_q(info),
        thumbnail_url:  FlickRaw.url_t(info),
        small_url:      FlickRaw.url_s(info),
        medium_url:     FlickRaw.url_c(info),
        large_url:      FlickRaw.url_b(info),
        original_url:   FlickRaw.url_o(info),
        photo_id:       info.id,
        photoset_id:    set_index + 1
      }

      photoset_obj.photos.create(photo)
    end
  end

  puts "\n-------------------------\n\n"



  puts "Done!"
end