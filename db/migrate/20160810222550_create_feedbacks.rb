class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :facilitation_id

      t.timestamps null: false
    end
  end
end
