class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.string :language
      t.string :value

      t.timestamps
    end
  end
end
