module Imagine
  class AlbumsController < ::Imagine::ApplicationController
    def index
    end

    def show
      load_album
      return render_show_view
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

    def render_show_view
      if params[:plugin]
        render :action => "/#{params[:plugin]}/show"
      elsif ::Imagine.default_plugin
        render :action => "/#{::Imagine.default_plugin}/show"
      else
        render :action => 'show'
      end
    end
  end
end
