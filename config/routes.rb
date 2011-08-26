Imagine::Engine.routes.draw do
  resources :albums do
    resources :images
  end
end
