Rails.application.routes.draw do
  resources :scripts

  post '*script', to: 'executions#create', format: false
end
