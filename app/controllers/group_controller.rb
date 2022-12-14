class GroupController < ApplicationController
  def index
    @group = Group.all
  end

  def show
    @group = Group.find(params[:id])
    @student = Student.new
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if (@group.save)
      redirect_to @group
    else
      render 'new'
    end
  end
  def edit
    @group = Group.find(params[:id])
  end
  def update
    @group = Group.find(params[:id])
    if (@group.update(group_params))
      redirect_to @group
    else
      render 'new'
    end
  end
  def destroy
    @group = Group.find(params[:id])
    @group.students.each do |st|
      st.destroy
    end

    @group.destroy
    redirect_to home_path
  end

  private def group_params
    params.require(:group).permit(:Name)

  end
end
