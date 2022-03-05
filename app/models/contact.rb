class Contact < ApplicationRecord



#THIS ONES WILL ALWAYS BE IN THE PARENT MODEL


  # has_many :comments, dependent: :destroy

  # validates :body, presence: true 
  # validates :body, length: { in: 10...500 }
  # Associations - how the other objects are related to the current object 
  # belongs_to
  # - always be in the child model
  # - tell us who the parent model is 
  # belongs_to :parent 

  # has_many
    # - more than one 
    # has_many :children(s)
  
  # has_one 
    # - only one 
    # has_one :child 
    # has_one :address
  # - these ones will always be in the parent models 
  # should only have one per model
  # adv
  # has_many :through
  # has_one :through 

  # option 
  # dependent - depending on a action. 
  # - parents has_many, has ones 

  has_many :notes, dependent: :destroy
  
  #Has one ONLY for adreeses
  has_one :address, dependent: :destroy

  # Validations - make sure the attr follow a rule 
  # confirmation
    # - two fields of attr to have the same content
  # inclusion
    # - included in a given set 
    # class Coffee < ActiveRecord::Base
    #   validates :size, inclusion: { 
    #     in: %w(small medium large),
    #       message: "%{value} is not a valid size" 
    #   }
    # end
  # length 
  # class Person < ActiveRecord::Base
  #   validates :name, length: { minimum: 2 }
  #   validates :bio, length: { maximum: 500 }
  #   validates :password, length: { in: 6..20 }
  #   validates :registration_number, length: { is: 6 }
  # end
  #  - how many chars
  # numericality
  # - for numbers 
  # - only numeric value and ranges 
  # class Player < ActiveRecord::Base
  #   validates :points, numericality: true
  #   validates :games_played, numericality: { only_integer: true }
  #   validates :golf_handicap, numericality: { less_than_or_equal_to: 40.4, greater_than_or_equal_to: 2 }
  # end
  # presence 
  # - fields is not empty
  # class Person < ActiveRecord::Base
  #   validates :name, :login, :email, presence: true
  # end
  # uniqueness
  # - only one of the value in the db 
  # class Account < ActiveRecord::Base
  #   validates :email, uniqueness: true
  # end
  # allow_nil 
  # allow_blank 
  # message
  # on

  validates :first_name, :age, :last_name, :email, :phone, presence: true 
  validates :email, uniqueness: true 
  validates :age, numericality: { only_integer: true, less_than_or_equal_to: 100, greater_than_or_equal_to: 18 }
  
  
  # Callbacks 
  # Methods
end
