class Recipe < ActiveRecord::Base

  include Votable
  attr_taggable :tech, :purposes

  has_and_belongs_to_many :projects, join_table: :recipes_projects
  has_and_belongs_to_many :contacts, join_table: :recipes_contacts

  accepts_nested_attributes_for :contacts

  validates_presence_of :name, :description

end