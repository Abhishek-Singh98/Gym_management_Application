Rails.application.routes.draw do
    root 'home#home'
    get'/SignUp', to: 'home#create'
    get'About' , to: 'home#about'
    get'/Main' , to: 'home#first'
    resources :trainers , only: [:show,:index]
    resources :gyms , only: [:show,:index]
end
