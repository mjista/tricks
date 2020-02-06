Rails.application.routes.draw do
	root to: "home#index"
	get 'contact-us', to: 'contacts#new', as: 'new_contact'
  post 'contact-us', to: 'contacts#create', as: 'create_contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
