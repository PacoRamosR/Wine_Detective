class WinesController < ApplicationController
  before_action :admin_user,     only: [:new, :edit, :delete]

    def show
        @wine = Wine.find(params[:id])
        @micropost = Micropost.new
        @microposts = @wine.microposts.includes(:user).order(created_at: :desc).page(params[:page]).per(5)
    end

    def index
      @wines = Wine.all.order(created_at: :desc).page(params[:page])
    end

    def new
      @wine = Wine.new
    end

    def edit
      @wine = Wine.find(params[:id])
    end

    def update
      @wine = Wine.find(params[:id])
      if @wine.update(wine_params)
        flash[:success] = "Wine updated"
        redirect_to @wine
      else
        render 'edit'
      end
    end

    def create
      @wine = Wine.new(wine_params)   
      if @wine.save
        reset_session
        flash[:success] = "登録できました！"
        redirect_to @wine
      else
        render 'new'
      end
    end


    def bookmarks
      @bookmark_wines = current_user.bookmark_wines.order(created_at: :desc)
    end


      private

      def wine_params
        params.require(:wine).permit(:id, :name, :country, :price,
                                     :grape_variety, :explanation, :pairing, :smooth_tannic,
                                     :dry_sweet, :soft_acidic, :rate, :light_bold, :wine_type, :profile_picture)
      end

      def admin_user
        redirect_to(root_url) unless current_user.admin?
      end
end
