Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "events#index"
  resources :events do
    member do
      post 'join' => 'event_attendees#create', as: :join
      delete 'leave' => 'event_attendees#destroy', as: :leave
    end
  end
end
