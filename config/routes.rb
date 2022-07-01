Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
  get 'sessions/new'
  get 'users/new'
  get 'wines/new'
  root 'users#new'
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
  get  '/policy', to: 'static_pages#policy'
  get  '/terms', to: 'static_pages#terms'
  get  '/policy-en', to: 'static_pages#policy-en'
  get  '/terms-en', to: 'static_pages#terms-en'


  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'
  resources :users
  resources :wines do
    resources :microposts, only: %i[create destroy show], shallow: true
    collection do
      get :bookmarks
    end
  end
  resources :bookmarks, only: %i[create destroy]
  resources :contacts, only: [:new, :create]

end
end
