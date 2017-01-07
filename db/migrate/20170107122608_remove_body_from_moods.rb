class RemoveBodyFromMoods < ActiveRecord::Migration[5.0]
  def change
    remove_column :moods, :body, :text
  end
end
