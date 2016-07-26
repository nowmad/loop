class Facilitation < ActiveRecord::Base
  validates :title, :facilitator_email, presence: true

end
