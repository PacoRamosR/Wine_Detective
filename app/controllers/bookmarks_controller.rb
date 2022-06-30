class BookmarksController < ApplicationController

    def create
        wine = Wine.find(params[:wine_id])
        current_user.bookmark(wine)
        redirect_back fallback_location: root_path, success: t('.success')
      end
    
      def destroy
        wine = current_user.bookmarks.find(params[:id]).wine
        current_user.unbookmark(wine)
        redirect_back fallback_location: root_path, success: t('.success')
      end

end
