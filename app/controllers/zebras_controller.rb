class ZebrasController < ApplicationController
  before_action :set_zebra, only: [:show, :edit, :update, :destroy]

  # GET /zebras
  # GET /zebras.json
  def index
    @zebras = Zebra.all
  end

  # GET /zebras/1
  # GET /zebras/1.json
  def show
  end

  # GET /zebras/new
  def new
    @zebra = Zebra.new
  end

  # GET /zebras/1/edit
  def edit
  end

  # POST /zebras
  # POST /zebras.json
  def create
    @zebra = Zebra.new(zebra_params)

    respond_to do |format|
      if @zebra.save
        format.html { redirect_to @zebra, notice: 'Zebra was successfully created.' }
        format.json { render :show, status: :created, location: @zebra }
      else
        format.html { render :new }
        format.json { render json: @zebra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zebras/1
  # PATCH/PUT /zebras/1.json
  def update
    respond_to do |format|
      if @zebra.update(zebra_params)
        format.html { redirect_to @zebra, notice: 'Zebra was successfully updated.' }
        format.json { render :show, status: :ok, location: @zebra }
      else
        format.html { render :edit }
        format.json { render json: @zebra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zebras/1
  # DELETE /zebras/1.json
  def destroy
    @zebra.destroy
    respond_to do |format|
      format.html { redirect_to zebras_url, notice: 'Zebra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zebra
      @zebra = Zebra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zebra_params
      params.require(:zebra).permit(:name)
    end
end
