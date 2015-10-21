Rails.application.routes.draw do
  devise_for :users, controllers: { 
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    unlocks: 'users/unlocks'
  }
  mount RedactorRails::Engine => '/redactor_rails'
  devise_for :donors, :controllers => { :omniauth_callbacks => "donors/omniauth_callbacks" }

  resources :messages

  resources :organizations

  resources :donations

  resources :needs

  resources :donors

  resources :users

  root 'needs#show', id: 1

  get 'pages/terms'
end
