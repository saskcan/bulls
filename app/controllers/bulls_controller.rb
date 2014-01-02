class BullsController < ApplicationController
  before_action :set_bull, only: [:show, :edit, :update, :destroy]

  # GET /bulls
  # GET /bulls.json
  def index
    @bulls = Bull.all
  end

  # GET /bulls/1
  # GET /bulls/1.json
  def show
  end

  # GET /bulls/new
  def new
    @bull = Bull.new
  end

  # GET /bulls/1/edit
  def edit
  end

  # POST /bulls
  # POST /bulls.json
  def create
    @bull = Bull.new(bull_params)

    respond_to do |format|
      if @bull.save
        format.html { redirect_to @bull, notice: 'Bull was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bull }
      else
        format.html { render action: 'new' }
        format.json { render json: @bull.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bulls/1
  # PATCH/PUT /bulls/1.json
  def update
    respond_to do |format|
      if @bull.update(bull_params)
        format.html { redirect_to @bull, notice: 'Bull was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bull.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bulls/1
  # DELETE /bulls/1.json
  def destroy
    @bull.destroy
    respond_to do |format|
      format.html { redirect_to bulls_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bull
      @bull = Bull.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bull_params
      params.require(:bull).permit(:name, :tag, :dob, :weight, :scrotum, :sire, :dam)
    end
end
