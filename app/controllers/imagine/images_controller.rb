module Imagine
  class ImagesController < ::Imagine::ApplicationController
    before_filter :load_album

    def show
      load_image
    end

    def new
      load_new_image
    end

    def create
      load_new_image
      if ::Imagine::Warehouses::Image.save(@image)
        redirect_to @album, :notice => "Image has been attached!"
      else
        flash.now[:error] = "There was a problem creating the image."
        render :action => 'new'
      end
    end

    protected
    def load_album
      @album = ::Imagine::Warehouses::Album.find(params[:album_id])
    end

    def load_new_image
      @image = ::Imagine::Warehouses::Image.new(@album, params[:image])
    end

    def load_image
      @image = ::Imagine::Warehouses::Image.find(@album, params[:id])
    end
  end
end
