class FeedbacksController < ApplicationController

  def new
    @facilitation = Facilitation.find(params[:facilitation_id])
    @feedback = @facilitation.feedbacks.build
    5.times {p "EVA"; @feedback.feedback_items.build}

  end


def create
  @facilitation = Facilitation.find(params[:facilitation_id])
  @feedback = @facilitation.feedbacks.build(params[:feedback])
  if @feedback.save
    # faz algo
  else
    #f az outra coisa.
  end
end


end
