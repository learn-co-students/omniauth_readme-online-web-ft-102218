Rails.application.routes.draw do
  root 'welcome#home'
  get '/auth/github/callback' => 'sessions#create'
end
