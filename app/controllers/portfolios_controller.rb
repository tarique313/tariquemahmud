class PortfoliosController < ApplicationController

  def index
    @portfolio_items = Portfolio.all
  end


  def new 
    @portfolio_items = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)

    if @portfolio_item.save
      redirect_to portfolios_path, notice: "Your portfolio is now live!"
    else  
      render :new
    end
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  def update
  @portfolio_item = Portfolio.find(params[:id])
    if @params_item.update(portfolio_params)
      redirect_to portfolios_path, notice: "Portfolio updated successfully!"
    else
      render :edit
    end
  end

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end
end
