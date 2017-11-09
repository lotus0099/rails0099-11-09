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

    def groups_params
        params.require(:group).permit(:title,:description)
    end


end
