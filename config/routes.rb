Roxy::Application.routes.draw do
  
  get "clearancestore" , :to => "subscriptions#index"
  post "subscribe", :to => "subscriptions#subscribe"
  root :to => 'subscriptions#index'

constraints :subdomain => "roxy" do
ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config.merge(:path => '')
end

end
