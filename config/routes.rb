Rails.application.routes.draw do

  mount RademadeAdmin::Engine => '/admin'
  namespace :rademade_admin, path: '/admin' do

    admin_resources :users
    admin_resources :catalogs

  end

  scope :api, module: :api, defaults: {format: :json} do
    resources :users, :only => [:index]
    resources :catalogs, :only => [:index]
    resources :catalogs, :only => [:show]
  end

  scope :module => :public do
    root 'index#index'
    get '*path', :to => 'index#index'
  end

end