Rails.application.routes.draw do
  resources :contacts
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  resources :pictures
  root to: "posts#index"#TOP
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :edit, :update,]
  resources :favorites, only: [:create, :destroy]
  resources :posts do
    collection do
    post :confirm
    end
  end
end
