Rails.application.routes.draw do
  resources :notifications
  resources :answers
  resources :questions do
    resources :answers
  end
  
  resources :users

  get '/' => 'users#index'

  root 'users#index'

  get '/mentors' => 'mentorships#mentors'
  get '/mentees' => 'mentorships#mentees'
  post '/mentors' => 'mentorships#create'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'



  get '/myquestions' => 'questions#mine'
end
