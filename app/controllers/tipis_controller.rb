class TipisController < ApplicationController
  before_action :set_tipi, only: [:show, :edit, :update, :destroy]

  # GET /tipis
  # GET /tipis.json
  def index
    @tipis = Tipi.all
  end

  # GET /tipis/1
  # GET /tipis/1.json
  def show
  end

  # GET /tipis/new
  def new
    @tipi = Tipi.new
  end

  # GET /tipis/1/edit
  def edit
  end

  # POST /tipis
  # POST /tipis.json
  def create
    @tipi = Tipi.new(tipi_params)

    respond_to do |format|
      if @tipi.save
        format.html { redirect_to @tipi, notice: 'Tipi was successfully created.' }
        format.json { render :show, status: :created, location: @tipi }
      else
        format.html { render :new }
        format.json { render json: @tipi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipis/1
  # PATCH/PUT /tipis/1.json
  def update
    respond_to do |format|
      if @tipi.update(tipi_params)
        format.html { redirect_to @tipi, notice: 'Tipi was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipi }
      else
        format.html { render :edit }
        format.json { render json: @tipi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipis/1
  # DELETE /tipis/1.json
  def destroy
    @tipi.destroy
    respond_to do |format|
      format.html { redirect_to tipis_url, notice: 'Tipi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipi
      @tipi = Tipi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipi_params
      params.require(:tipi).permit(:title, :location, :description, :persons, :price, :image)
    end
end
