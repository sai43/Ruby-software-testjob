Rails.application.routes.draw do

  post '/get_bill' => 'home#get_bill'
  get '/get_bill' => 'home#get_bill'
  root 'home#index'
  
end
