class GroupsController < ApplicationController
    def index
        @groups = Group.all
    end
    def new
        @group = Group.new
    end
    def create
        @group = Group.new(groups_params)
        @group.save
            redirect_to groups_path
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
    def groups_params
        params.require(:group).permit(:title,:description)
    end


end
