Rails.application.routes.draw do

  root to: "landing#index"

  resources :events do
  end

  resources :users do
  end
  
end
