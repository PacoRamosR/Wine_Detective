class MicropostsController < ApplicationController
    before_action :logged_in_user, only: [:create, :destroy]

    def create
        @micropost = current_user.microposts.build(micropost_params)
        if @micropost.save
          flash[:success] = "Review created!"
          redirect_back fallback_location: root_path
        else
          flash[:danger] = "Fail!"
          redirect_back fallback_location: root_path
        end
    end
  
    def destroy
    end

    def show
      @wine = Wine.find(params[:id])
      @microposts = @wine.microposts.includes(:user).order(created_at: :desc).page(params[:page]).per(5)
    end

    private

    def micropost_params
      params.require(:micropost).permit(:content).merge(wine_id: params[:wine_id])
    end
    
end
