Rails.application.routes.draw do

  namespace :admin do
    resources :messages
    resources :services
    resources :team_members
    resources :thoughts
    resources :thought_categories
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  root 'pages#home'

  get 'about_us', :to => 'pages#about_us'
  get 'what_we_do', :to => 'pages#what_we_do'
  get 'contact_us', :to => 'pages#contact_us'
  post 'send_message', :to => 'pages#create_message'
  get 'thank_you', :to => 'pages#thank_you'

  resources :thoughts, :only => [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
