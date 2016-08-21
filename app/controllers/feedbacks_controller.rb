class FeedbacksController < ApplicationController

  def new
    @facilitation = Facilitation.find(params[:facilitation_id])
    @feedback = @facilitation.feedbacks.build
    5.times {@feedback.feedback_items.build}
  end

  def create
    @facilitation = Facilitation.find(params[:facilitation_id])
    p feedback_params
    @feedback = @facilitation.feedbacks.build(feedback_params)

    if @feedback.save
      flash[:notice] = "Your feedback is very welcome. Thank you! :)"
      redirect_to new_facilitation_feedback_path(@facilitation)
    else
      p @feedback.errors
      5.times {@feedback.feedback_items.build} if @feedback.feedback_items.blank?
      flash[:error] = "Form is invalid"
      render :new
    end
  end

  def show

  end

private

  def feedback_params
    params.require(:feedback).permit(:feedback_items_attributes => [:description, :mood])
  end

end
