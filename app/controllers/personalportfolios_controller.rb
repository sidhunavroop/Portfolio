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

  def edit
    @portfolio=Personalportfolio.find(params[:id])
  end

  def update
    @portfolio=Personalportfolio.find(params[:id])
    
    respond_to do |format|
      if @portfolio.update(params.require(:personalportfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to personalportfolios_path, notice: 'Portfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

end
