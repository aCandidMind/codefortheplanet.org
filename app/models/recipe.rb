class Recipe < ActiveRecord::Base

  include Votable

  has_and_belongs_to_many :projects

  validates_presence_of :name, :description

end