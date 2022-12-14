Rails.application.routes.draw do
  resources :answers
  resources :questions
  resources :tests
  resources :users
  # route to test your configuration
  get '/hello', to: 'application#hello_world'

  get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end