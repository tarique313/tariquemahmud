class PortfoliosController < ApplicationController
before_action :set_portfolio_items, only: [:edit, :update, :show, :destroy]
layout "portfolio"
  def index
    @portfolio_items = Portfolio.all
  end

  def ror
    @ror_portfolio_items = Portfolio.ror
  end

  def pentest_portfolio_items
    @pentest_portfolio_items = Portfolio.pentest_portfolio_items
  end

  def new 
    @portfolio_item = Portfolio.new
    4.times { @portfolio_item.technologies.build}
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)
    respond_to do |format|
    if @portfolio_item.save!
      format.html { redirect_to @portfolio_item, notice: "Your portfolio is now live!"}
    else  
      format.html { render :new }
    end
    end
  end

  def edit
    #4.times { @portfolio_item.technologies.build}
  end

  def show
  end
  def destroy

    @portfolio_item.destroy
    respond_to do |format|
      format.html{redirect_to portfolios_url, notice: "Record was removed."}
    end
  end
  def update
    if @portfolio_item.update(portfolio_params)
      redirect_to portfolios_path, notice: "Portfolio updated successfully!"
    else
      render :edit
    end
  end

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name])
  end

  def set_portfolio_items
    @portfolio_item = Portfolio.find(params[:id])
  end
end
