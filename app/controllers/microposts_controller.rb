class MicropostsController < ApplicationController
    before_action :logged_in_user, only: [:create, :destroy]
    before_action :correct_user,   only: :destroy

    def create
        @micropost = current_user.microposts.build(micropost_params)
        if @micropost.save
          redirect_back fallback_location: root_path
        else
          redirect_back fallback_location: root_path
        end
    end
  
    def destroy
      @micropost.destroy
      redirect_back fallback_location: root_path
    end

    def show
      @wine = Wine.find(params[:id])
      @microposts = @wine.microposts.includes(:user).order(created_at: :desc).page(params[:page]).per(5)
    end

    private

    def micropost_params
      params.require(:micropost).permit(:content).merge(wine_id: params[:wine_id])
    end

    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end
    
end
