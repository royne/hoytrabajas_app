class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.references :bank, null: false, foreign_key: true
      t.references :provider, null: false, foreign_key: true
      t.string :number

      t.timestamps
    end
  end
end
