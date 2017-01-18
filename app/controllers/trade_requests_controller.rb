class TradeRequestsController < ApplicationController
  before_action :set_trade_request, only: [:show, :edit, :update, :destroy]

  # GET /trade_requests
  # GET /trade_requests.json
  def index
    @trade_requests = TradeRequest.all
    @team = Team.find(current_user.team_id)
  end

  # GET /trade_requests/1
  # GET /trade_requests/1.json
  def show
    @team = Team.find(current_user.team_id)
  end

  # GET /trade_requests/new
  def new
    @trade_request = TradeRequest.new
    @team_id = params[:id]
  end

  # GET /trade_requests/1/edit
  def edit
    if @trade_request
      @team_id = TradeRequest.getOtherParty(@trade_request, current_user.team_id)
    elsif trade_request
      @team_id = TradeRequest.getOtherParty(trade_request, current_user.team_id)
    end
  end

  # POST /trade_requests
  # POST /trade_requests.json
  def create
    @trade_request = TradeRequest.new
    t_r = params[:trade_request]
    @trade_request.offeror_id = t_r[:offeror_id]
    @trade_request.offeree_id = t_r[:offeree_id]
    @trade_request.outgoing_cash = t_r[:outgoing_cash]
    @trade_request.incoming_cash = t_r[:incoming_cash]
    @trade_request.completed = false
    @trade_request.response_turn = t_r[:offeree_id]
    @trade_request.outgoing_properties = params[:outgoing_property]
    @trade_request.incoming_properties = params[:incoming_property]
    if @trade_request.save
      redirect_to trade_requests_path, notice: "Your trade request was successfully submitted"
    else
      flash[:error] = "Please specify properties, cash, or both!"
      render :action => "index"
    end
  end

  # PATCH/PUT /trade_requests/1
  # PATCH/PUT /trade_requests/1.json
  def update
    respond_to do |format|
      if @trade_request.update(trade_request_params)
        format.html { redirect_to @trade_request, notice: 'Trade request was successfully updated.' }
        format.json { render :show, status: :ok, location: @trade_request }
      else
        format.html { render :edit }
        format.json { render json: @trade_request.errors, status: :unprocessable_entity }
      end
    end
  end

  def accept
    @trade_request = TradeRequest.find(params[:id])
    @trade_request.execute_trade
    @trade_request.completed = true
    respond_to do |format|
      if @trade_request.save!
        format.html { redirect_to trade_requests_url, notice: 'Trade request was successfully accepted.' }
        format.json { head :no_content }
      else
        format.html { redirect_to trade_requests_url, notice: 'Invalid trade request.' }
        format.json { render json: @trade_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trade_requests/1
  # DELETE /trade_requests/1.json
  def destroy
    @trade_request.destroy
    respond_to do |format|
      format.html { redirect_to trade_requests_url, notice: 'Trade request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trade_request
      @trade_request = TradeRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trade_request_params
      params.require(:trade_request).permit(:outgoing_cash, :completed, :outgoing_properties, :incoming_properties, :incoming_cash, :response_turn)
    end
end
