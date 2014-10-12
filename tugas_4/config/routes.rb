Tugas4::Application.routes.draw do
  devise_for :users
  resources :tosmics

  root "tosmics#index"
end
