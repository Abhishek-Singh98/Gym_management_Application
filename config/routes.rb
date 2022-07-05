Rails.application.routes.draw do
    root 'home#home'
    get'/SignUp', to: 'home#create'
    get'About' , to: 'home#about'
    get'/Main' , to: 'home#first'
    resources :trainer , only: [:show,:index]
    resources :gym , only: [:show,:index]
    resources :review, only: [:show, :index, :new, :create]
end
