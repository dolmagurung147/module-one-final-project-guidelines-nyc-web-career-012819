class CreateBets < ActiveRecord::Migration[5.2]
  def change
    create_table :bets do |t|
      t.integer :user_id
      t.integer :game_id
      t.float :amount
    end
  end
end
