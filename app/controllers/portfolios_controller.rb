class PortfoliosController < ApplicationController
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
    @portfolio_item = Portfolio.find(params[:id])
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end
  def destroy
    @portfolio_item = Portfolio.find(params[:id])

    @portfolio_item.destroy
    respond_to do |format|
      format.html{redirect_to portfolios_url, notice: "Record was removed."}
    end
  end
  def update
  @portfolio_item = Portfolio.find(params[:id])
    if @portfolio_item.update(portfolio_params)
      redirect_to portfolios_path, notice: "Portfolio updated successfully!"
    else
      render :edit
    end
  end

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name])
  end
end
