require "monban/constraints/signed_in"
require "monban/constraints/signed_out"

Rails.application.routes.draw do

  constraints Monban::Constraints::SignedIn.new do
    root "tasks#index"
  end

  constraints Monban::Constraints::SignedOut.new do
    root "homes#show", as: :home
  end

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]

  resources :tasks, only: [:create, :index] do
    member do
      post "complete" => "task_completions#create"
    end
  end

  # root to: "homes#show"

end
