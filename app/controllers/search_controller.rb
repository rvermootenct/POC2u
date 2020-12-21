class SearchController < ApplicationController
    def search
        @students = Student.all
        @students = params[:q].nil? ? [] : Student.search(params[:q])
    end
end
