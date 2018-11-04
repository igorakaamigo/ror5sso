Rails.application.routes.draw do
  devise_for :users
  use_doorkeeper
  root to: 'site#index'

  namespace :api do
    namespace :v1 do
      get :me, to: 'credentials#me'
    end
  end
end
