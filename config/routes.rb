Rails.application.routes.draw do
  match ':controller(/:action(/:id))', :via => :get
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
