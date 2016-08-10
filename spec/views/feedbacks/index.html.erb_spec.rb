require 'rails_helper'

RSpec.describe "feedbacks/index", type: :view do
  before(:each) do
    assign(:feedbacks, [
      Feedback.create!(
        :facilitation_id => 2
      ),
      Feedback.create!(
        :facilitation_id => 2
      )
    ])
  end

  it "renders a list of feedbacks" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
