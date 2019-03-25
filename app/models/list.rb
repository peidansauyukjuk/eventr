class List < ApplicationRecord
  has_many :groups
  has_many :users, through: :groups
  # has_many :items


end
