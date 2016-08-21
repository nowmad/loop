class AddMoodToFeedbackItem < ActiveRecord::Migration
  def change
    add_column :feedback_items, :mood, :integer
  end
end
