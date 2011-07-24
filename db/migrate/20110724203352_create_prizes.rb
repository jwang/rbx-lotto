class CreatePrizes < ActiveRecord::Migration
  def change
    create_table :prizes do |t|
      t.string :name
      t.text :description
      t.integer :amount

      t.timestamps
    end
  end
end
