Metube::Application.routes.draw do
  root to: "videos#index"

  get "/videos", to: "videos#index"
  get "/videos/new", to: "videos#new"
  get "/videos/:title", to: "videos#show"
  post "/videos", to: "videos#create"
  get "videos/:title/edit", to: "videos#edit"
  put "/videos/:title", to: "videos#update"
  delete "/videos/:title", to: "videos#destroy"

  post "/videos/:title/", to: "comments#create"
  delete "/videos/:title/:id", to: "comments#delete"



end
