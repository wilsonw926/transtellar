class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :from_language
      t.string :to_language
      t.text :description
      t.references :user, index: true
      t.timestamps
    end
  end
end
