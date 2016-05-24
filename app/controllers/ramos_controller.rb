class RamosController < ApplicationController
  before_action :set_ramo, only: [:show, :edit, :update, :destroy]

  # GET /ramos
  # GET /ramos.json
  def index
    @ramos = Ramo.all
  end

  # GET /ramos/1
  # GET /ramos/1.json
  def show
  end

  # GET /ramos/new
  def new
    @ramo = Ramo.new
  end

  # GET /ramos/1/edit
  def edit
  end

  # POST /ramos
  # POST /ramos.json
  def create
    @ramo = Ramo.new(ramo_params)

    respond_to do |format|
      if @ramo.save
        format.html { redirect_to @ramo, notice: 'Ramo was successfully created.' }
        format.json { render :show, status: :created, location: @ramo }
      else
        format.html { render :new }
        format.json { render json: @ramo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ramos/1
  # PATCH/PUT /ramos/1.json
  def update
    respond_to do |format|
      if @ramo.update(ramo_params)
        format.html { redirect_to @ramo, notice: 'Ramo was successfully updated.' }
        format.json { render :show, status: :ok, location: @ramo }
      else
        format.html { render :edit }
        format.json { render json: @ramo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ramos/1
  # DELETE /ramos/1.json
  def destroy
    @ramo.destroy
    respond_to do |format|
      format.html { redirect_to ramos_url, notice: 'Ramo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ramo
      @ramo = Ramo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ramo_params
      params.require(:ramo).permit(:nombre, :estudiante_id)
    end
end
