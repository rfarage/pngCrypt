Rails.application.routes.draw do
  get 'welcome/page'
  post 'welcome/your_action'
  get 'poop/home', to: 'poop#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
