class CreateCounts < ActiveRecord::Migration
  def change
    create_table :counts do |t|
      t.integer :try
      t.integer :correct
      t.references :sentence, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
