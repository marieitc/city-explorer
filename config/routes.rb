Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :games, only: %i[new create show] do
    get '/lobby', to: 'games#lobby'
    get '/start', to: 'games#start'
  end
  # Defines the root path route ("/")
  # root "articles#index"
  get '/components', to: 'pages#components'
  get '/join', to: 'games#join'
end

# new -> create -> show (lobby) -> show (game started)
