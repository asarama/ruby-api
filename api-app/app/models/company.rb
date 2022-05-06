class Company < ApplicationRecord
  validates "name", presence: true

  has_and_belongs_to_many :users
  has_and_belongs_to_many :projects
end
