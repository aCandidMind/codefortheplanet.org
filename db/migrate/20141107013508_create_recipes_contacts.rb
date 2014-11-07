class CreateRecipesContacts < ActiveRecord::Migration
  def change
    create_table :recipes_contacts, id: false do |t|
      t.integer :recipe_id, null: false
      t.integer :contact_id, null: false
    end
  end
end
