module SetSource
  extend ActiveSupport::Concern
  def set_source
    session[:source] = params[:q] if params[:q]
  end
  included do
    before_action :set_source
  end

  def set_source
    session[:source] = params[:q] if params[:q]
  end
end



  