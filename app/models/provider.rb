class Provider < ApplicationRecord
  has_one :account
  has_one :bank, through: :account

  VALID_NIT_REGEX = { reg1: /^([0-9]{9}-[0-9]{1})?$/, reg2: /^([0-9]{9})?$/ }

  validates :name, presence: true
  validates :contact_name, presence: true, length: { maximum: 10 }
  validate :validate_nit
  
  accepts_nested_attributes_for :account, update_only: true

  self.per_page = 10

  def bank_name
    bank&.name
  end

  def account_number
    account&.number
  end

  private

    def validate_nit
      unless VALID_NIT_REGEX[:reg1].match(self.nit) || VALID_NIT_REGEX[:reg2].match(self.nit)
        errors.add(:nit, :invalid)
      end
    end
    
end
