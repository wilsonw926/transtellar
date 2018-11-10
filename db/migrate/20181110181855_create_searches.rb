class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :from_language_text
      t.string :to_language_text
      t.timestamps
    end
  end
end
