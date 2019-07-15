class CreateWonCounts < ActiveRecord::Migration[5.2]
  def change
    create_table :won_counts do |t|
      t.string :name
      t.integer :wonCount

      t.timestamps
    end
  end
end
