Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :questions
  end

  resources :questions, only: :index do
    resources :answers
  end

  root 'questions#index'
end
