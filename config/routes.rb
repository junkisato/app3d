Rails.application.routes.draw do
  resources :patients do
    resources :responsibles
  end
end
