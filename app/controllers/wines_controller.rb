class WinesController < ApplicationController


    def show
        @wine = Wine.find(params[:id])
        @micropost = Micropost.new
        @microposts = @wine.microposts.includes(:user).order(created_at: :desc).page(params[:page]).per(5)
    end

    def index
        @wines = Wine.all.order(created_at: :desc).page(params[:page])
    end


      private

      def wine_params
        params.require(:wine).permit(:id, :name, :country, :price, grape_variety)
      end
end
