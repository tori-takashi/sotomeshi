Rails.application.routes.draw do

  root to: "landing#index"

  #get '/events' => "events#index"
  #get '/events/:id' => "events#show"
  #post '/event/create' => "events#create", as: :create_event
  #get '/event/new_event' => "events#new", as: :new_event
  #delete '/event/:id' => "events#delete", as: :delete_event
  #patch '/event/:id' => "events#update", as: :update_event
  #get '/event/edit/:id' => "events#edit", as: :edit_event

  resources :events
  
  get "/user/:id" => "users#show"

end
