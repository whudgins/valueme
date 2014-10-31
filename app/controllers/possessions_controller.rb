class PossessionsController < ApplicationController
  before_action :set_possession, only: [:show, :edit, :update, :destroy]

  # GET /possessions
  # GET /possessions.json
  def index
    @possessions = Possession.all
  end

  # GET /possessions/1
  # GET /possessions/1.json
  def show
  end

  # GET /possessions/new
  def new
    @possession = Possession.new
  end

  # GET /possessions/1/edit
  def edit
  end

  # POST /possessions
  # POST /possessions.json
  def create
    @possession = Possession.new(possession_params)

    respond_to do |format|
      if @possession.save
        format.html { redirect_to @possession, notice: 'Possession was successfully created.' }
        format.json { render action: 'show', status: :created, location: @possession }
      else
        format.html { render action: 'new' }
        format.json { render json: @possession.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /possessions/1
  # PATCH/PUT /possessions/1.json
  def update
    respond_to do |format|
      if @possession.update(possession_params)
        format.html { redirect_to @possession, notice: 'Possession was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @possession.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /possessions/1
  # DELETE /possessions/1.json
  def destroy
    @possession.destroy
    respond_to do |format|
      format.html { redirect_to possessions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_possession
      @possession = Possession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def possession_params
      params.require(:possession).permit(:name, :model_num, :receipt_url, :est_value)
    end
end
