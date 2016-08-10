require 'rails_helper'

RSpec.describe "feedbacks/new", type: :view do
  before(:each) do
    assign(:feedback, Feedback.new(
      :facilitation_id => 1
    ))
  end

  it "renders new feedback form" do
    render

    assert_select "form[action=?][method=?]", feedbacks_path, "post" do

      assert_select "input#feedback_facilitation_id[name=?]", "feedback[facilitation_id]"
    end
  end
end
