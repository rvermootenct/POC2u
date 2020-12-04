class WelcomeController < ApplicationController
    def index
        @increment = session[:count]
        @students = Student.all
        @student = Student.new
    end

    def save
        student_params = params[:student]
        Student.create(
            email: student_params['email'],
            name: student_params['name'],
            phone_number: student_params['phone_number']
        )
    end

    private

    def student_params
        params.require(:student).permit(:name, :email, :phone_number)
    end
end
