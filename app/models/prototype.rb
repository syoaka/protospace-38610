class Prototype < ApplicationRecord

  with_options presence: true do
    validates :title
    validates :catch_copy
    validates :concept
    validates :image
  end

  has_many :comments, dependent: :destroy
  belongs_to :user
  has_one_attached :image

end
