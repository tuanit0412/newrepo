class ApplicationController < ActionController::Base
    before_action :set_i18n_locale_from_params
    # truoc khi load trang chay authorize
    before_action :authorize
    protected
    def authorize
        # tim session :user_id
        unless User.find_by(id: session[:user_id])
        # khong tim thay bao "Please log in"
            redirect_to login_url, notice: "Please log in"
        end
    end
    # dung de dich trang
    def set_i18n_locale_from_params
        if params[:locale]
                if I18n.available_locales.map(&:to_s).include?(params[:locale])
                    I18n.locale = params[:locale]
                else
                    flash.now[:notice] =
                    "#{params[:locale]} translation not available"
                    logger.error flash.now[:notice]
                end
            end
        end
        
end
