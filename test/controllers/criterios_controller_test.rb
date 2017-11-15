require 'test_helper'

class CriteriosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @criterio = criterios(:one)
  end

  test "should get index" do
    get criterios_url, as: :json
    assert_response :success
  end

  test "should create criterio" do
    assert_difference('Criterio.count') do
      post criterios_url, params: { criterio: { calificacion: @criterio.calificacion, nombre: @criterio.nombre, ponderacion: @criterio.ponderacion, tipo: @criterio.tipo } }, as: :json
    end

    assert_response 201
  end

  test "should show criterio" do
    get criterio_url(@criterio), as: :json
    assert_response :success
  end

  test "should update criterio" do
    patch criterio_url(@criterio), params: { criterio: { calificacion: @criterio.calificacion, nombre: @criterio.nombre, ponderacion: @criterio.ponderacion, tipo: @criterio.tipo } }, as: :json
    assert_response 200
  end

  test "should destroy criterio" do
    assert_difference('Criterio.count', -1) do
      delete criterio_url(@criterio), as: :json
    end

    assert_response 204
  end
end
