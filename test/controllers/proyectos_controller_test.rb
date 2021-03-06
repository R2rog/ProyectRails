require 'test_helper'

class ProyectosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proyecto = proyectos(:one)
  end

  test "should get index" do
    get proyectos_url, as: :json
    assert_response :success
  end

  test "should create proyecto" do
    assert_difference('Proyecto.count') do
      post proyectos_url, params: { proyecto: { cost: @proyecto.cost, description: @proyecto.description, name: @proyecto.name, priority: @proyecto.priority } }, as: :json
    end

    assert_response 201
  end

  test "should show proyecto" do
    get proyecto_url(@proyecto), as: :json
    assert_response :success
  end

  test "should update proyecto" do
    patch proyecto_url(@proyecto), params: { proyecto: { cost: @proyecto.cost, description: @proyecto.description, name: @proyecto.name, priority: @proyecto.priority } }, as: :json
    assert_response 200
  end

  test "should destroy proyecto" do
    assert_difference('Proyecto.count', -1) do
      delete proyecto_url(@proyecto), as: :json
    end

    assert_response 204
  end
end
