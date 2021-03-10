class LineOrdersController < ApplicationController
  before_action :set_line_order, only: %i[ show edit update destroy ]

  # GET /line_orders or /line_orders.json
  def index
    @line_orders = LineOrder.all
  end

  # GET /line_orders/1 or /line_orders/1.json
  def show
  end

  # GET /line_orders/new
  def new
    @line_order = LineOrder.new
  end

  # GET /line_orders/1/edit
  def edit
  end

  # POST /line_orders or /line_orders.json
  def create
    @line_order = LineOrder.new(line_order_params)

    respond_to do |format|
      if @line_order.save
        format.html { redirect_to @line_order, notice: "Line order was successfully created." }
        format.json { render :show, status: :created, location: @line_order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @line_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /line_orders/1 or /line_orders/1.json
  def update
    respond_to do |format|
      if @line_order.update(line_order_params)
        format.html { redirect_to @line_order, notice: "Line order was successfully updated." }
        format.json { render :show, status: :ok, location: @line_order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @line_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_orders/1 or /line_orders/1.json
  def destroy
    @line_order.destroy
    respond_to do |format|
      format.html { redirect_to line_orders_url, notice: "Line order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_order
      @line_order = LineOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def line_order_params
      params.fetch(:line_order, {})
    end
end
