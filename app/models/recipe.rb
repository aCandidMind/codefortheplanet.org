class Recipe < ActiveRecord::Base

  include Votable
  attr_taggable :tech

  has_and_belongs_to_many :projects, join_table: :recipes_projects

  validates_presence_of :name, :description

end