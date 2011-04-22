Clublet::Application.routes.draw do
  root :to => 'clubs#index'
  match '/auth/:provider/callback', :to => 'sessions#callback'
end
