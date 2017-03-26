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

  def show

  end

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end
end
