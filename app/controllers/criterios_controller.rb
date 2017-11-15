class CriteriosController < ApplicationController
  before_action :set_criterio, only: [:show, :update, :destroy]

  # GET /criterios
  def index
    @criterios = Criterio.all

    render json: @criterios
  end

  # GET /criterios/1
  def show
    render json: @criterio
  end

  # POST /criterios
  def create
    @criterio = Criterio.new(criterio_params)

    if @criterio.save
      render json: @criterio, status: :created, location: @criterio
    else
      render json: @criterio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /criterios/1
  def update
    if @criterio.update(criterio_params)
      render json: @criterio
    else
      render json: @criterio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /criterios/1
  def destroy
    @criterio.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_criterio
      @criterio = Criterio.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def criterio_params
      params.require(:criterio).permit(:nombre, :ponderacion, :tipo, :calificacion)
    end
end
