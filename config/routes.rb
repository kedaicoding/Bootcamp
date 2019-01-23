Rails.application.routes.draw do
  root to: "landing_pages#index"
  
  get 'list_anggota', to: 'registrations#index'

  resources :registrations , except: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
