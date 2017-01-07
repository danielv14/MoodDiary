class AddUserIdToMoods < ActiveRecord::Migration[5.0]
  def change
    add_reference :moods, :user, foreign_key: true
  end
end
