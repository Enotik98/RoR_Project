class StudentsController < ApplicationController
  def index
    @student = Student.all
  end

  def new
    @student = Student.new
  end

  def show
    @group = Group.find(params[:id])
    @student = Student.find(params[:group_id])
  end

  def create
    @group = Group.find(params[:group_id])
    @student = @group.students.create(student_params)
    redirect_to group_path(@group)

  end

  def edit
    @group = Group.find(params[:id])
    @student = Student.find(params[:group_id])
  end

  def update
    @group = Group.find(params[:id])
    @student = Student.find(params[:group_id])
    if (@student.update(student_params))
      redirect_to group_path(@group)
    else
      render 'group/show'
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @student = Student.find(params[:group_id])

    @student.destroy
    redirect_to group_path(@group)
  end

  private def student_params
    params.require(:student).permit(:Surname, :Street, :House, :Flat, :group_id)
  end
end
