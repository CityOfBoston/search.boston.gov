Rails.application.routes.draw do
  resources :clicks
  root :to => "search#search"
end
