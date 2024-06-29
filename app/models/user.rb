class User < ApplicationRecord
  has_many :article, dependent: :destroy
  has_many :comment, dependent: :destroy

  has_secure_password

  before_save :downcase_nickname

  validates :nickname, presence: true, uniqueness: true

  def downcase_nickname
    nickname.downcase!
  end
end
