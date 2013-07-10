class AddMarketingMediaToClearancePages < ActiveRecord::Migration
  def change
  	add_column :clearance_pages, :marketing_media, :string
  end
end
