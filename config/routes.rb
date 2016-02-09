Rails.application.routes.draw do
  resources :notifications
  resources :answers
  resources :questions do
    resources :answers
  end
  resources :users

  get '/mentors' => 'mentorships#mentors'
  get '/mentees' => 'mentorships#mentees'

  get '/login' => 'session#new'
  post 'login' => 'session#create'
  delete '/login' => 'session#destroy'

  root 'users#index'

  get '/myquestions' => 'questions#mine'
end
