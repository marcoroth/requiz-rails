Rails.application.routes.draw do
  # resources :questions
  resources :quizzes
  get '/kshn', to: "kshn#index"
  # resources :notes
  resource :example, constraints: -> { Rails.env.development? }
  get 'home/index'
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
