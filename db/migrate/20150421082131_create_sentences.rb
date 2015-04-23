class CreateSentences < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
      t.text :english
      t.text :japanese

      t.timestamps null: false
    end
  end
end
