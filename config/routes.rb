Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, controllers: { registrations: "registrations" }

  get '/group_rec', to: 'pages#group_rec'  # Matt's temporary page
  get '/mentor_info', to: 'pages#mentor_info'  # Yumi's temporary page
  get '/mentor_form', to: 'pages#mentor_form'  # Matt's temporary page
  get '/mentor_rec', to: 'pages#mentor_rec'  # Matt's temporary page
  get '/mentoree_show', to: 'pages#mentoree_show'  # Matt's temporary page

  resources :groups, only: [:index, :new, :create, :show] do
    member do
      post :join
      delete :leave
    end
    resources :messages, only: :create
  end

  resource :profile, only: [:edit, :update]
  resource :mentor_profile, only: [:edit, :update]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
