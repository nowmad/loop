class FacilitationsController < ApplicationController
  before_action :set_facilitation, only: [:show, :edit, :update, :destroy]

  # GET /facilitations
  # GET /facilitations.json
  def index
    @facilitations = Facilitation.all
  end

  # GET /facilitations/1
  # GET /facilitations/1.json
  def show
  end

  # GET /facilitations/new
  def new
    @facilitation = Facilitation.new
  end

  # GET /facilitations/1/edit
  def edit
  end

  # POST /facilitations
  # POST /facilitations.json
  def create
    @facilitation = Facilitation.new(facilitation_params)

    respond_to do |format|
      if @facilitation.save
        format.html { redirect_to @facilitation, notice: 'Facilitation was successfully created.' }
        format.json { render :show, status: :created, location: @facilitation }
      else
        format.html { render :new }
        format.json { render json: @facilitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /facilitations/1
  # PATCH/PUT /facilitations/1.json
  def update
    respond_to do |format|
      if @facilitation.update(facilitation_params)
        format.html { redirect_to @facilitation, notice: 'Facilitation was successfully updated.' }
        format.json { render :show, status: :ok, location: @facilitation }
      else
        format.html { render :edit }
        format.json { render json: @facilitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facilitations/1
  # DELETE /facilitations/1.json
  def destroy
    @facilitation.destroy
    respond_to do |format|
      format.html { redirect_to facilitations_url, notice: 'Facilitation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facilitation
      @facilitation = Facilitation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def facilitation_params
      params.require(:facilitation).permit(:title, :facilitator_email)
    end
end
