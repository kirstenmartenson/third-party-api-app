Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get "/sunsets" => "sunsets#index"

    get "/dealers" => "dealers#index"
  end
end
