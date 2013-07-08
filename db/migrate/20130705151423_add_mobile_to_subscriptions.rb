class AddMobileToSubscriptions < ActiveRecord::Migration
  def change
  	add_column :subscriptions, :mobile, :string
  end
end
