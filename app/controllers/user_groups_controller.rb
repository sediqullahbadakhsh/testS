class UserGroupsController < ApplicationController

  def index;end

  def new
    @userGroup = UserGroup.create()
  end

  def create
    @userGroup = UserGroup.create(userGroup_params)
    respond_to do |format|
      if @userGroup.save
        format.html { redirect_to root_path, notice: "succeffully joined." }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @userGroup.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @user = current_user
    @userGroup = UserGroup.find_by(group_id: @group.id, user_id: @user.id)
    respond_to do |format|
      if @userGroup.destroy!
        format.html { redirect_to root_path, notice: "succeffully Removed." }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @userGroup.errors, status: :unprocessable_entity }
      end
    end
  end
  private
  def userGroup_params
    params.require(:user_group).permit(:user_id, :group_id, :status)
  end


end


