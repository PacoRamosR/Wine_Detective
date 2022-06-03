class WinesController < ApplicationController
    def show
        @wine = Wine.find(params[:id])
        @sweetness = [{ data:[["sweetness",@wine.dry_sweet]]}, { data:[["Astringency",@wine.smooth_tannic]]},{ data:[["Body",@wine.light_bold]]},{ data:[["Acidity",@wine.soft_acidic]]}]
        @astringency = { data:[["Astringency",@wine.smooth_tannic]]}
        @body = { data:[["Body",@wine.light_bold]]}
        @acidity= { data:[["Acidity",@wine.soft_acidic]]}
        


    end
end
