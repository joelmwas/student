class StudentsController < ApplicationController

	def index
		@student = Student.all
	end


	def new
		@student = Student.new
     end


    
    def student_params
    	params.require(:student).permit(:name, :idno, :email)
    end


    def create
     	@student = Student.new(student_params)
     	if @student.save
     		flash[:success] =" Student Saved Successfully"
     		render 'new'
     	else
     		flash[:fail] ="Snap! Didn't save change some few things"
     		render 'new'

   		 end
    end

    def update

    end

 end
