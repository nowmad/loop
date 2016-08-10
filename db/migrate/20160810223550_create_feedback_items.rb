class CreateFeedbackItems < ActiveRecord::Migration
  def change
    create_table :feedback_items do |t|
      t.integer :feedback_id
      t.string :description

      t.timestamps null: false
    end
  end
end
