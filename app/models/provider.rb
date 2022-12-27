class Provider < ApplicationRecord
  has_one :account
  has_one :bank, through: :account

  validates :name, presence: true
  validates :contact_name, presence: true, length: { maximum: 10 }

  accepts_nested_attributes_for :account


  def bank_name
    bank&.name
  end

  def account_number
    account&.number
  end

end
