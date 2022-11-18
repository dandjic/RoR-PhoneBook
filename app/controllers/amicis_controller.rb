class AmicisController < ApplicationController
  before_action :set_amici, only: %i[ show edit update destroy ]

  # GET /amicis or /amicis.json
  def index
    @amicis = Amici.all
  end

  # GET /amicis/1 or /amicis/1.json
  def show
  end

  # GET /amicis/new
  def new
    @amici = Amici.new
  end

  # GET /amicis/1/edit
  def edit
  end

  # POST /amicis or /amicis.json
  def create
    @amici = Amici.new(amici_params)

    respond_to do |format|
      if @amici.save
        format.html { redirect_to amici_url(@amici), notice: "Amici was successfully created." }
        format.json { render :show, status: :created, location: @amici }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @amici.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amicis/1 or /amicis/1.json
  def update
    respond_to do |format|
      if @amici.update(amici_params)
        format.html { redirect_to amici_url(@amici), notice: "Amici was successfully updated." }
        format.json { render :show, status: :ok, location: @amici }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @amici.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amicis/1 or /amicis/1.json
  def destroy
    @amici.destroy

    respond_to do |format|
      format.html { redirect_to amicis_url, notice: "Amici was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amici
      @amici = Amici.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def amici_params
      params.require(:amici).permit(:name, :date_of_birth, :adress, :email, :years, :phone)
    end
end
