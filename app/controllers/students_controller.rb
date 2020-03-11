class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = Student.find_by(params[:id])
    @student.active = !@student.active
    redirect_to student_path(@student.id)
    @student.save
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end