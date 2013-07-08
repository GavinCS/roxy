class RenameSubscriptionsToClearancePages < ActiveRecord::Migration
  def up
  	rename_table :subscriptions, :clearance_pages
  end

  def down
  	rename_table :clearance_pages, :subscriptions
  end
end
