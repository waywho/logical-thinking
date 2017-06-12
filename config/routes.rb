Rails.application.routes.draw do

  namespace :admin do
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

  resources :thought, :only => [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
