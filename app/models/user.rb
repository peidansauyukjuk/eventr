class User < ApplicationRecord
  has_secure_password
  has_many :groups
  has_many :lists, through: :groups

  def full_name
    "#{first_name} #{last_name}"
  end
end
