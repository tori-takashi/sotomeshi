Rails.application.routes.draw do
  get '/events' => "events#index"
  get '/events/:id' => "events#show"
  root to: "landing#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/user/:id" => "users#show"
end
