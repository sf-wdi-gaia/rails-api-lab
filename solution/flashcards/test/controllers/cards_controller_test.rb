require 'test_helper'

class CardsControllerTest < ActionController::TestCase
  setup do
    @card = cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cards)
  end

  test "should create card" do
    assert_difference('Card.count') do
      post :create, card: { answer: @card.answer, answer_hidden: @card.answer_hidden, question: @card.question }
    end

    assert_response 201
  end

  test "should show card" do
    get :show, id: @card
    assert_response :success
  end

  test "should update card" do
    put :update, id: @card, card: { answer: @card.answer, answer_hidden: @card.answer_hidden, question: @card.question }
    assert_response 204
  end

  test "should destroy card" do
    assert_difference('Card.count', -1) do
      delete :destroy, id: @card
    end

    assert_response 204
  end
end
