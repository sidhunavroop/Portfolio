class PersonalportfoliosController < ApplicationController
  def index
    @portfolios = Personalportfolio.all
  end
end
