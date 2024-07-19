class User < ApplicationRecord
  # has_many :microposts

  # downcase email before saving to database
  before_save { self.email = email.downcase }

  # column name: string
  validates :name, presence: true, length: { maximum: 50 }

  # column email: string
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true

  # column password_digest: string
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
