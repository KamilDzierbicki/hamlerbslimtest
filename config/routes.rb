Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/erb' => "presentation#erb_page"
  get '/slim' => "presentation#slim_page"
  get '/haml' => "presentation#haml_page"
end
