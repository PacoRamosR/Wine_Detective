Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get 'wines/new'
  root 'static_pages#home'
  get  '/choice',  to: 'static_pages#choice'
  get  '/price1',  to: 'static_pages#white-price'
  get  '/price2',  to: 'static_pages#red-price'
  get  '/price3',  to: 'static_pages#sparkling-price'
  get  '/food11',  to: 'static_pages#red-low-food'
  get  '/food12',  to: 'static_pages#red-medium-food'
  get  '/food13',  to: 'static_pages#red-big-food'
  get  '/food21',  to: 'static_pages#white-low-food'
  get  '/food22',  to: 'static_pages#white-medium-food'
  get  '/food23',  to: 'static_pages#white-big-food'
  get  '/food31',  to: 'static_pages#sparkling-low-food'
  get  '/food32',  to: 'static_pages#sparkling-medium-food'
  get  '/food33',  to: 'static_pages#sparkling-big-food'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'

  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :wines do
    resources :microposts, only: %i[create destroy show], shallow: true
    collection do
      get :bookmarks
    end
  end
  resources :bookmarks, only: %i[create destroy]
end
