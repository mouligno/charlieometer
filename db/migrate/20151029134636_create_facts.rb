class CreateFacts < ActiveRecord::Migration
  def change
    create_table :facts do |t|
      t.string :content
      t.integer :upvote, default: 0
      t.integer :downvote, default: 0
      t.float :score, default: 0.0

      t.timestamps null: false
    end
  end
end
