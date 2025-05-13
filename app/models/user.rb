class User < ApplicationRecord
  belongs_to :role
  has_many :job_applications, dependent: :destroy

  devise :database_authenticatable,
         :registerable,
         :jwt_authenticatable,
         jwt_revocation_strategy: Devise::JWT::RevocationStrategies::Null
end
