class Feedback < ActiveRecord::Base
  belongs_to :facilitation
  has_many :feedback_items

  accepts_nested_attributes_for :feedback_items

  validate :have_at_least_one_feedback_item

  def have_at_least_one_feedback_item
    if self.feedback_items.blank?
      errors.add(:feedback_items, :cant_be_blank)
    end
  end

end
