class Article < ApplicationRecord
  has_many :comments, dependent: :destroy

  # Form Validations 
  validates :title, presence: true,length: { minimum: 3 }
end
