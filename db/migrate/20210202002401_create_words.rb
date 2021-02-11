class CreateWords < ActiveRecord::Migration[6.1]
  def change
    create_table :words do |t|
      t.integer :api_id
      t.string :word
      t.text :definition
      t.text :synonyms

      t.timestamps
    end
  end
end
