class WinesController < ApplicationController


    def show
        @wine = Wine.find(params[:id])
    end

    def index
        @wines = Wine.all.order(created_at: :desc).page(params[:page])
      end


      private

      def wine_params
        params.require(:wine).permit(:name, :country, :price, grape_variety,)
      end
end
