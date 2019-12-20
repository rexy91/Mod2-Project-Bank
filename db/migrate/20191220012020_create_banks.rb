class CreateBanks < ActiveRecord::Migration[6.0]
  def change
    create_table :banks do |t|
      t.string :bank_name
      t.string :bank_location
      t.integer :staff_count
      t.integer :year_founded

      t.timestamps
    end
  end
end
