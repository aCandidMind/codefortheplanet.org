class AlterTagsAddPresetFlag < ActiveRecord::Migration
  def change
    add_column :tags, :preset, :boolean
  end
end
