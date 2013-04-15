Halfpx::Application.routes.draw do

  root :to => 'home#index'
  match '/selected-photos-black-and-white' => 'home#selected_photos_bw'
  match '/trips-to-tahoe' => 'home#trips_to_tahoe'
  match '/san-francisco' => 'home#san_francisco'
  match '/stream' => 'home#stream'

end
