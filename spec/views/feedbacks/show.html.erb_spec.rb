require 'rails_helper'

RSpec.describe "feedbacks/show", type: :view do
  before(:each) do
    @feedback = assign(:feedback, Feedback.create!(
      :facilitation_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
