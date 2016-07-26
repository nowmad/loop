class Facilitation < ActiveRecord::Base
  has_many :votes

  validates :title, :facilitator_email, presence: true

end
