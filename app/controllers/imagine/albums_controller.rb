module Imagine
  class AlbumsController < ::ApplicationController
    def index
    end

    def show
      load_album
    end

    def new
      load_new_album
    end

    def create
      load_new_album
      if ::Imagine::Warehouses::Album.save(@album)
        redirect_to @album, :notice => "Album has been created!"
      else
        flash.now[:error] = "There was a problem creating the album."
        render :action => 'new'
      end
    end

    protected
    def load_new_album
      @album = ::Imagine::Warehouses::Album.new(params[:album])
    end

    def load_album
      @album = ::Imagine::Warehouses::Album.find(params[:id])
    end
  end
end
