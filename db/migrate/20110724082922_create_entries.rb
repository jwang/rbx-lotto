class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name, :null => false
      t.boolean :won, :default => false

      t.timestamps
    end
  end
end
