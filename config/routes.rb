Roxy::Application.routes.draw do
  


constraints :subdomain => "roxy" do
ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config.merge(:path => '')
end

  get "clearancestore" , :to => "subscriptions#index"
  post "subscribe", :to => "subscriptions#subscribe"
  root :to => 'subscriptions#index'

end
