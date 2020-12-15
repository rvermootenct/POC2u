class WelcomeController < ApplicationController
    def index
        @increment = session[:count]
        @students = Student.all
        @student = Student.new
        @student.validate
        @first_name_validation_message = @student.validate, :first_name
        # @last_name_validation_message = validation_status @student, :last_name
    end

    def save
        student_params = params[:student]
        Student.create(
            email: student_params['email'],
            first_name: student_params['first_name'],
            last_name: student_params['last_name'],
            phone_number: student_params['phone_number']
        )
    end

    private

    def student_params
        params.require(:student).permit(:first_name, :last_name, :email, :phone_number)
    end
end