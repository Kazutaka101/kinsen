class Admin::Base < ApplicationController
    before_action :admin_login_required
    private def admin_login_required
        if session[:admin] == "admin"

        else
            render "admin/errors/login_required" 
        end
    end

  

    
end