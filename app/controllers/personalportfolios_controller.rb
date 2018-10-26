class PersonalportfoliosController < ApplicationController
  def index
    @portfolios = Personalportfolio.all
  end

  def new
    @portfolio = Personalportfolio.new
  end

  def create
    @portfolio = Personalportfolio.new(params.require(:personalportfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to personalportfolios_path, notice: 'Portfolio was successfully created.' }
        
      else
        format.html { render :new }
        
      end
    end
  end





end
