class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.references :user, foreign_key: true
      t.integer :good_answers_count
      t.integer :bad_answers_count

      t.timestamps
    end
  end
end
