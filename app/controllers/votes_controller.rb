class VotesController < ApplicationController

  def new
    @facilitation = Facilitation.find(params[:facilitation_id])
    @vote  = @facilitation.votes.build
  end

  def create
    @facilitation = Facilitation.find(params[:facilitation_id])
    @vote  = @facilitation.votes.build(params[:vote].permit(:score))
    if @vote.save
      flash[:success] = 'Thanks'
    else
      flash[:error] = 'Sorry. Could not compute your vote. Try again later.'
    end
    redirect_to new_facilitation_vote_path and return
  end

end
