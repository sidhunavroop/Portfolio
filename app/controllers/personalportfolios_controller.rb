class PersonalportfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
  layout "portfolio"
  access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :edit, :update, :sort]}, site_admin: :all

  def index
    @portfolios = Personalportfolio.by_position
  end

  def sort
    params[:order].each do |key, value|
      Personalportfolio.find(value[:id]).update(position: value[:position])
    end

    head :ok
  end

  def angular
    @angular_portfolios = Personalportfolio.angular
  end

  def new
    @portfolio = Personalportfolio.new
  end

  def create
    @portfolio = Personalportfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to personalportfolios_path, notice: 'Portfolio was successfully created.' }
        
      else
        format.html { render :new }
        
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to personalportfolios_path, notice: 'Portfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    
  end

  def destroy
    @portfolio.destroy
    respond_to do |format|
      format.html { redirect_to personalportfolios_path, notice: 'Portfolio was successfully destroyed.' }
    end
  end

  private

  def portfolio_params
    params.require(:personalportfolio).permit(:title,
                                              :subtitle,
                                              :body,
                                              :main_image,
                                              :thumb_image,
                                              technologies_attributes: [:id, :name, :_destroy]
                                              )
  end

  def set_portfolio_item
    @portfolio=Personalportfolio.find(params[:id])
  end
end
