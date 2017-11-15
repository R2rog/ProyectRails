class CriterioProyectosController < ApplicationController
  before_action :set_criterio_proyecto, only: [:show, :update, :destroy]

  # GET /criterio_proyectos
  def index
    @criterio_proyectos = CriterioProyecto.all

    render json: @criterio_proyectos
  end

  # GET /criterio_proyectos/1
  def show
    render json: @criterio_proyecto
  end

  # POST /criterio_proyectos
  def create
    @criterio_proyecto = CriterioProyecto.new(criterio_proyecto_params)

    if @criterio_proyecto.save
      render json: @criterio_proyecto, status: :created, location: @criterio_proyecto
    else
      render json: @criterio_proyecto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /criterio_proyectos/1
  def update
    if @criterio_proyecto.update(criterio_proyecto_params)
      render json: @criterio_proyecto
    else
      render json: @criterio_proyecto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /criterio_proyectos/1
  def destroy
    @criterio_proyecto.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_criterio_proyecto
      @criterio_proyecto = CriterioProyecto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def criterio_proyecto_params
      params.require(:criterio_proyecto).permit(:criteria_id, :project_id, :value)
    end
end
