Clublet::Application.routes.draw do
  match '/auth/:provider/callback', :to => 'sessions#callback'

end
