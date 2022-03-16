class User < ApplicationRecord
  belongs_to :organisation
  has_many :shifts
  has_secure_password


end
