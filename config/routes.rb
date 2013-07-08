Roxy::Application.routes.draw do
  

constraints :subdomain => "roxy" do
ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config.merge(:path => '')
end

  get "clearancestore" , :to => "clearance_pages#index"
  post "subscribe", :to => "clearance_pages#subscribe"
  root :to => 'clearance_pages#index'

end
