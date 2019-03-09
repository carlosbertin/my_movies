class ApplicationController < ActionController::Base
    protected
    def after_sign_in_path_for(resource)
      # depois de autenticado, o usuário é redirecionado para index dos movies
      request.env['omniauth.origin'] || stored_location_for(resource) || movies_path
    end

    # depois que o usuário clica em sign_out, ele permanece na mesma página
    def after_sign_out_path_for(resource_or_scope)
        request.referrer
    end
end
