Rails.application.routes.draw do
  get 'welcome/index'
  resources :alunos
  root 'welcome#index'
end