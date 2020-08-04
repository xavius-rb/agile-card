class Project < ApplicationRecord
  self.inheritance_column = :_type

  validates_presence_of :name
end
