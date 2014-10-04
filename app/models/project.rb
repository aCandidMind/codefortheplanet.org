class Project < ActiveRecord::Base

  include Votable

  has_and_belongs_to_many :recipes

  validates_presence_of :name

end