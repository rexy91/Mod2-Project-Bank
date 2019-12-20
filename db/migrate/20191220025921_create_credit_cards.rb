class CreateCreditCards < ActiveRecord::Migration[6.0]
  def change
    create_table :credit_cards do |t|
      t.integer :limit
      t.integer :bank_id
      t.integer :account_id

      t.timestamps
    end
  end
end
