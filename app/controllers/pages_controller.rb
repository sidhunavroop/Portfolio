class PagesController < ApplicationController
  def home
    @posts=Blog.all
    @skills=Skill.all
    @personalportfolios=Personalportfolio.all
  end

  def about
  end

  def contact
  end
end