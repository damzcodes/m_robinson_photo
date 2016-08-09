class GalleriesController < ApplicationController

	def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(gallery_params)
    if @gallery.save
      redirect_to new_gallery_path
    else
      render :new
    end
  end

  private
  def gallery_params
    params.require(:gallery).permit(:title, :description, :slug)
  end
end
