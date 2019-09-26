Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'anbridges#index'

  get '/top', to: 'anbridges#index'
  get '/company', to: 'anbridges#company'
  get '/business', to: 'anbridges#business'
  get '/graduate', to: 'anbridges#graduate'
  get '/career', to: 'anbridges#career'

  scope :admin do
    resource :sessions, only: [:new, :create, :destroy]
    get '/', to: 'news#index'

    resources :news
  end

  resources :portal
end
