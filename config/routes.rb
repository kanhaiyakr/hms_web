Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root 'welcome#index', as: 'authenticated_root'
  end
  devise_scope :user do
    root 'devise/sessions#new'
  end

end
