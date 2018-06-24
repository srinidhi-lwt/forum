class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.integer :answer_id
      t.integer :user_id
      t.string :vote_type
      t.timestamps
    end
  end
end
