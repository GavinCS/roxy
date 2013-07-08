class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :email
      t.string :firstname
      t.string :lastname
      t.integer :gender
      t.string :source
      t.timestamps
    end
  end
end
