Rails.application.routes.draw do
  get 'users/new'

  get 'home/index'

  root to: 'static_pages#home'

  get 'help', to: "static_pages#help"
  get 'contact', to: "static_pages#contact"
  get 'about', to: "static_pages#about"
  get 'home', to: "static_pages#home"
  get 'signup', to: 'users#new'


end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
