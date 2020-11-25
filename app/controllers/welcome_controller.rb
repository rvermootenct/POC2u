class WelcomeController < ApplicationController
    def index
        puts '--------'
        puts session[:count]
        puts '--------'
        @count = session[:count].to_i
    end
end
