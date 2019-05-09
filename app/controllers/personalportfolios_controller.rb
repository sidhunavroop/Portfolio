class PersonalportfoliosController < ApplicationController
  def index
    @portfolios = Personalportfolio.all
  end

  def angular
    @angular_portfolios = Personalportfolio.angular
  end

  def new
    @portfolio = Personalportfolio.new
    3.times { @portfolio.technologies.build }
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
    @portfolio=Personalportfolio.find(params[:id])
  end

  def update
    @portfolio=Personalportfolio.find(params[:id])

    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to personalportfolios_path, notice: 'Portfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @portfolio=Personalportfolio.find(params[:id])
  end

  def destroy
    @portfolio=Personalportfolio.find(params[:id])
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
                                              technologies_attributes: [:name]
                                              )
  end

end
