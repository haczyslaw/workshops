class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :rememberable, :recoverable

  validates :email, presence: true, uniqueness: true, format: { with: Devise.email_regexp }
  validates :password, presence: true
end
