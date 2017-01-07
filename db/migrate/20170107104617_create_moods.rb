class CreateMoods < ActiveRecord::Migration[5.0]
  def change
    create_table :moods do |t|
      t.string :mood
      t.text :body

      t.timestamps
    end
  end
end
