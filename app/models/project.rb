class Project < ActiveRecord::Base
  attr_accessible :additional, :amount, :category, :deadline, :description, :purpose, :title

  has_many :requirements
end
