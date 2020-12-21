class WelcomeController < ApplicationController
    def index
        @increment = session[:count]
        @students = Student.all
        @student = Student.new
        puts '------------'
        puts Student
        puts '------------'
    end

    def show
        @students = Student.find_by(params[:first_name])
    end

    def save
        student_params = params[:student]
        Student.create(
            email: student_params['email'],
            first_name: student_params['first_name'],
            last_name: student_params['last_name'],
            number: student_params['number']
        )
    end
    private

    def student_params
        params.require(:student).permit(:first_name, :last_name, :email, :number)
    end
end