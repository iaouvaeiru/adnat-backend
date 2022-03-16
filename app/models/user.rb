class User < ApplicationRecord
  belongs_to :organisation
  has_many :shifts
  has_secure_password

  validates :name, uniqueness: {case_sensitive: false}
  validates :password, presence: true
end
