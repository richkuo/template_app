class Requirement < ActiveRecord::Base
  attr_accessible :avoid, :description, :project_id, :status
  belongs_to :project

end
