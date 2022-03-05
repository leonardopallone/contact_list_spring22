class Note < ApplicationRecord
  
  belongs_to :contact
  has_many :comments, dependent: :destroy #all
  validate :body, presence:true #each
  validates :body, length: { in: 10...500} #lengh
 
end
