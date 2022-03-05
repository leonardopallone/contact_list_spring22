class Address < ApplicationRecord
  belongs_to :contact
  validates :street, :zip, :state, :city presence:true #all 

  validate :zip, numericaly: { only_integer: true} # each
  validate :state, inclusion: {
in: %w(Ut NV CA)
  message: "Not a valid State in the US"
  }
  
end
