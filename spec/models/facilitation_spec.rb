require 'rails_helper'

describe Facilitation do

  it { should validate_presence_of :title }
  it { should validate_presence_of :facilitator_email }

end