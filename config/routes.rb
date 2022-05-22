Rails.application.routes.draw do

	# Defines the root path route ("/")
	root 'articles#index'
	
	resources :articles
#	get '/articles', to: 'articles#index'
#	get '/article/:id', to: 'articles#show'

end