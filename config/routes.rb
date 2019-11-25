Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'anbridges#index'

  get '/top', to: 'anbridges#index'
  get '/company', to: 'anbridges#company'
  get '/service', to: 'anbridges#service'
  get '/recruit', to: 'anbridges#recruit'
  get '/career', to: 'anbridges#career'
  get '/mission', to: 'anbridges#mission'
end
