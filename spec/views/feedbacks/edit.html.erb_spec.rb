require 'rails_helper'

RSpec.describe "feedbacks/edit", type: :view do
  before(:each) do
    @feedback = assign(:feedback, Feedback.create!(
      :facilitation_id => 1
    ))
  end

  it "renders the edit feedback form" do
    render

    assert_select "form[action=?][method=?]", feedback_path(@feedback), "post" do

      assert_select "input#feedback_facilitation_id[name=?]", "feedback[facilitation_id]"
    end
  end
end
