Rails.application.routes.draw do
  root 'sentiment#index'

  post 'analyze', to: 'sentiment#analyze'
end
