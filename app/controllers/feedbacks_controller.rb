class FeedbacksController < ApplicationController

  def new
    @facilitation = Facilitation.find(params[:facilitation_id])
    @feedback = @facilitation.feedbacks.build
    5.times {p "EVA"; @feedback.feedback_items.build}

  end



end
