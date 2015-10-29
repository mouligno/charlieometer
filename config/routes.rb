Rails.application.routes.draw do
  resources :facts, only: [:index, :create] do
    resource :upvote, only: :create, controller: 'facts/upvote'
    resource :downvote, only: :create, controller: 'facts/downvote'
  end
end
