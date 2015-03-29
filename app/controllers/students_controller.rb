class StudentsController < ApplicationController
	def new
		@student = Student.new
     end


     def create
     	@student = Student.new(Student_params)

    end
