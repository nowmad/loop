class Facilitation < ActiveRecord::Base
  has_many :feedbacks

  validates :title, :facilitator_email, presence: true

end
