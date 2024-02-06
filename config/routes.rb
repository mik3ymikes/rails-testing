Rails.application.routes.draw do


  resources :posts # will generate all routes for posts including POST /posts with action create
end
