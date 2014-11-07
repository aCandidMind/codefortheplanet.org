class CreateRecipesProjects < ActiveRecord::Migration
  def change
    create_table :recipes_projects, id: false do |t|
      t.integer :recipe_id, null: false
      t.integer :project_id, null: false
    end
  end
end
