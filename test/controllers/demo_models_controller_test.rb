require 'test_helper'

class DemoModelsControllerTest < ActionController::TestCase
  setup do
    @demo_model = demo_models(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:demo_models)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create demo_model" do
    assert_difference('DemoModel.count') do
      post :create, demo_model: { comment: @demo_model.comment, dateTime_filed: @demo_model.dateTime_filed, date_field: @demo_model.date_field, name: @demo_model.name, time_field: @demo_model.time_field }
    end

    assert_redirected_to demo_model_path(assigns(:demo_model))
  end

  test "should show demo_model" do
    get :show, id: @demo_model
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @demo_model
    assert_response :success
  end

  test "should update demo_model" do
    patch :update, id: @demo_model, demo_model: { comment: @demo_model.comment, dateTime_filed: @demo_model.dateTime_filed, date_field: @demo_model.date_field, name: @demo_model.name, time_field: @demo_model.time_field }
    assert_redirected_to demo_model_path(assigns(:demo_model))
  end

  test "should destroy demo_model" do
    assert_difference('DemoModel.count', -1) do
      delete :destroy, id: @demo_model
    end

    assert_redirected_to demo_models_path
  end
end
