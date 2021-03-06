class OrdersController < ApplicationController
  before_action :set_order, only: %i[ show edit update destroy parlay ]
  before_action :authenticate_user!, except: [:show]

  # GET /orders or /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1 or /orders/1.json
  def show
  end

  def parlay
  end

  # GET /orders/new
  def new
    @order = Order.new
    @categories = Category.all
    @selection_options = ['', '']
    @categories.each do |category|
      @selection_options << [category.title, category.id]
    end
  end

  # GET /orders/1/edit
  def edit
    @categories = Category.all
    @selection_options = ['', '']
    @categories.each do |category|
      @selection_options << [category.title, category.id]
    end
  end

  # POST /orders or /orders.json
  def create
    @order = Order.new(order_params)
    @order.user = current_user

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: "Order was successfully created." }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1 or /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: "Order was successfully updated." }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1 or /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: "Order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:title, :body, :category_id, :estimate)
    end
end
