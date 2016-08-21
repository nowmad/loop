class FeedbackItem < ActiveRecord::Base
  belongs_to :feedback

  validates :description, presence: true
end
