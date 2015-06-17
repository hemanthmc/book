require 'test_helper'

class BookPurchasesControllerTest < ActionController::TestCase
  setup do
    @book_purchase = book_purchases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_purchases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_purchase" do
    assert_difference('BookPurchase.count') do
      post :create, book_purchase: { author: @book_purchase.author, name: @book_purchase.name, price: @book_purchase.price }
    end

    assert_redirected_to book_purchase_path(assigns(:book_purchase))
  end

  test "should show book_purchase" do
    get :show, id: @book_purchase
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_purchase
    assert_response :success
  end

  test "should update book_purchase" do
    patch :update, id: @book_purchase, book_purchase: { author: @book_purchase.author, name: @book_purchase.name, price: @book_purchase.price }
    assert_redirected_to book_purchase_path(assigns(:book_purchase))
  end

  test "should destroy book_purchase" do
    assert_difference('BookPurchase.count', -1) do
      delete :destroy, id: @book_purchase
    end

    assert_redirected_to book_purchases_path
  end
end
