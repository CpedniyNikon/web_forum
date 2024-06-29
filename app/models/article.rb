class Article < ApplicationRecord
  has_many :comment, dependent: :destroy
  belongs_to :user
end
