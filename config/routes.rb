Rails.application.routes.draw do
  root 'static_pages#home'

  get '/our_team', to: 'static_pages#our_team', as: 'our_team'
  get '/our_work', to: 'static_pages#our_work', as: 'our_work'
  get '/contact_us', to: 'static_pages#contact_us', as: 'contact_us'

  resources :contacts, only: [:new, :create]

 
end
