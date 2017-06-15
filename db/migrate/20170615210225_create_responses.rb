class CreateResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :responses do |t|
      t.integer :answer_id, null: false
      t.integer :author_id, null: false
      t.timestamps
    end
    add_index :responses, :answer_id
    add_index :responses, :author_id
  end
end
