Rails.application.routes.draw do

  root to: "landing#index"

  resources :events do
    member do
      get "select_attendance" => :selectable_users
      post "attend"
    end
  end

  resources :users do
  end
  
end
