Rails.application.routes.draw do
  resources :comments, except: [:index, :new]
  resources :bikes, except: [:index]
  resources :user_sessions
  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
  get '/', to: "pages#root", as: :root
  resources :users, except: [:index]
end
