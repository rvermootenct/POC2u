class WelcomeController < ApplicationController
    def index
        @increment = session[:count]
    end
end
