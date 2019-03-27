class List < ApplicationRecord
  has_many :groups
  has_many :users, through: :groups
  has_many :list_items
  has_many :items, through: :list_items
  # belongs_to :event


end
