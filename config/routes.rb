Rails.application.routes.draw do
  resources :press_clips
  resources :gigs
  resources :blogs

  get 'about-calvin', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
