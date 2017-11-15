require 'test_helper'

class CriterioProyectosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @criterio_proyecto = criterio_proyectos(:one)
  end

  test "should get index" do
    get criterio_proyectos_url, as: :json
    assert_response :success
  end

  test "should create criterio_proyecto" do
    assert_difference('CriterioProyecto.count') do
      post criterio_proyectos_url, params: { criterio_proyecto: { criteria_id: @criterio_proyecto.criteria_id, project_id: @criterio_proyecto.project_id, value: @criterio_proyecto.value } }, as: :json
    end

    assert_response 201
  end

  test "should show criterio_proyecto" do
    get criterio_proyecto_url(@criterio_proyecto), as: :json
    assert_response :success
  end

  test "should update criterio_proyecto" do
    patch criterio_proyecto_url(@criterio_proyecto), params: { criterio_proyecto: { criteria_id: @criterio_proyecto.criteria_id, project_id: @criterio_proyecto.project_id, value: @criterio_proyecto.value } }, as: :json
    assert_response 200
  end

  test "should destroy criterio_proyecto" do
    assert_difference('CriterioProyecto.count', -1) do
      delete criterio_proyecto_url(@criterio_proyecto), as: :json
    end

    assert_response 204
  end
end
