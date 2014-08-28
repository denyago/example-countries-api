Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'countries/:code' => 'countries#show'
    end
  end
end
