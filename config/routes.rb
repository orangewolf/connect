Rails.application.routes.draw do
  mount RedactorRails::Engine => '/redactor_rails'
  devise_for :donors, :controllers => { :omniauth_callbacks => "donors/omniauth_callbacks" }

  resources :messages

  resources :organizations

  resources :donations

  resources :needs

  resources :donors

  root 'needs#show', id: 1

  get 'pages/terms'
end
