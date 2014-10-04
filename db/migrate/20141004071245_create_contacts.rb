class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :website
      t.string :email
      t.string :telephone
      t.string :twitter_handle
      t.string :facebook_name
      t.string :google_plus_name
      t.string :street
      t.string :country

      t.timestamps
    end
  end
end
