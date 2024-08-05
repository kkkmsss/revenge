class CleansController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
    
    def top
    end

    def sindan
    end
    
    def index
        @cleans = Clean.all
    end
    
    def new
        @clean = Clean.new
    end
    
    def create
        clean = Clean.new(clean_params)
        clean.user_id = current_user.id
        if clean.save!
            redirect_to :action => "index"
        else
            redirect_to :action => "new"
        end
    end
    
    def show
        @clean = Clean.find(params[:id])
        @comments = @clean.comments
        @comment = Comment.new
    end

    def edit
        @clean = Clean.find(params[:id])
    end

    def update
        clean = Clean.find(params[:id])
        if clean.update(clean_params)
            redirect_to :action => "index"
        else
            redirect_to :action => "edit"
        end
    end

    def destroy
        clean = Clean.find(params[:id])
        clean.destroy
        redirect_to action: :index
    end
    
    private
    def clean_params
        params.require(:clean).permit(:maker, :genre, :cost, :name, :about, :image, :overall, :light, :power, :care, :time, :tag_ids)
    end
end
