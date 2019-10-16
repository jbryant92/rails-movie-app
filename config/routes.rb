# frozen_string_literal: true

Rails.application.routes.draw do
  resources :movies
  resources :actors
  resources :characters

  # GraphQL routes
  post '/graphql', to: 'graphql#execute'

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
  end
end
