class GroupsController < ApplicationController
    def index
        @groups = Group.all
    end
    def new
        @group = Group.new
    end
    def create
        @group = Group.new(groups_params)
        if @group.save
            redirect_to groups_path
        else
            render :new;
        end
    end
    def show
        @group = Group.find(params[:id])
    end
    def edit
        @group = Group.find(params[:id])
    end
    def update
        @group = Group.find(params[:id])
        @group.update(groups_params)
        redirect_to groups_path,notice: "Update Success"
    end
    def destroy
        @group = Group.find(params[:id])
        @group.destroy
        redirect_to groups_path,alert: "Group deleted"
    end
    def groups_params
        params.require(:group).permit(:title,:description)
    end
end
