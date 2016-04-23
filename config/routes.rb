Rails.application.routes.draw do
	root 'home#index'
	get 'sign_up' => 'home#index'
	get 'login' => 'home#index'
	get 'dashboard' => 'home#index'
	get 'settings' => 'home#index'

	devise_for :users, module: 'api', path: 'api/users', defaults: {format: 'json'}

	namespace :api, defaults: {format: 'json'} do
	end
end
