class BookPurchasesController < ApplicationController
  before_action :set_book_purchase, only: [:show, :edit, :update, :destroy]

  # GET /book_purchases
  # GET /book_purchases.json
  def index
    @book_purchases = BookPurchase.all
  end

  # GET /book_purchases/1
  # GET /book_purchases/1.json
  def show
  end

  # GET /book_purchases/new
  def new
    @book_purchase = BookPurchase.new
  end

  # GET /book_purchases/1/edit
  def edit
  end

  # POST /book_purchases
  # POST /book_purchases.json
  def create
    @book_purchase = BookPurchase.new(book_purchase_params)

    respond_to do |format|
      if @book_purchase.save
        format.html { redirect_to @book_purchase, notice: 'Book purchase was successfully created.' }
        format.json { render :show, status: :created, location: @book_purchase }
      else
        format.html { render :new }
        format.json { render json: @book_purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_purchases/1
  # PATCH/PUT /book_purchases/1.json
  def update
    respond_to do |format|
      if @book_purchase.update(book_purchase_params)
        format.html { redirect_to @book_purchase, notice: 'Book purchase was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_purchase }
      else
        format.html { render :edit }
        format.json { render json: @book_purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_purchases/1
  # DELETE /book_purchases/1.json
  def destroy
    @book_purchase.destroy
    respond_to do |format|
      format.html { redirect_to book_purchases_url, notice: 'Book purchase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_purchase
      @book_purchase = BookPurchase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_purchase_params
      params.require(:book_purchase).permit(:name, :author, :price)
    end
end
