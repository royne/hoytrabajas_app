class Account < ApplicationRecord
  belongs_to :bank
  belongs_to :provider

  validates :number, length: { maximum: 15 }
end
