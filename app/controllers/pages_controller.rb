class PagesController < ApplicationController

	def show
    @page = Gallery.find_by!(slug: params[:id])
  end
end
