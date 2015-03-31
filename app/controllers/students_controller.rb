class StudentsController < ApplicationController

	def index
		@student = Student.all
	end


	def new
		@student = Student.new
    end

     def show
     	@student = Student.find(params[:id])
     end
    
    def student_params
    		params.require(:student).permit(:name, :idno, :email)
    	end


# create a student action and save in db
    def create
     	@student = Student.new(student_params)
     	if @student.save
     		flash[:success] =" Student Saved Successfully"
     		render 'new'
     	else
     		flash[:fail] ="Snap! Didn't save. change some few things"
     		render 'new'

   		 end
     end
# edit student info

	def edit
		@student = Student.find(params[:id])
	end

 #update student info action

    def update
    	@student = Student.find(params[:id])
    	if @student.update_attributes(student_params)
    	  #handle a successful update
    	else
    		render 'new'
        end
end
    private

    	def student_params
    		params.require(:student).permit(:name, :idno, :email)
    	end

 end
