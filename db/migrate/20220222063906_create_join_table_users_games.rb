class CreateJoinTableUsersGames < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :games do |t|
      # t.index [:user_id, :game_id]
      # t.index [:game_id, :user_id]
    end
  end
end
