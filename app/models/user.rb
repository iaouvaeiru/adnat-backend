class User < ApplicationRecord
  belongs_to :organisation
  has_many :shifts
  has_secure_password

  validates :username, uniqueness: {case_sensitive: false}
  validates :password, presence: true
end
