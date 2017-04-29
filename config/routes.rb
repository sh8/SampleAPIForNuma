Rails.application.routes.draw do
	post '/images' => 'images#create'
end
