class Project < ApplicationRecord
  validates :name, presence: true
  validates :start_date, presence: true

  has_and_belongs_to_many :companies
end
