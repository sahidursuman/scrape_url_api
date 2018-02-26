concern :api_base do  
  resources :scrape_urls, only: [:index, :create, :show] 
end

namespace :api, :defaults => {:format => :json} do
  namespace :v1 do
    concerns :api_base
  end
end