module Imagine
  module Warehouses
    class Album
      def self.find(id)
        # returns an album
      end

      def self.new(params)
        # returns a new album
        ::Imagine::Album.new params
      end

      def self.save(album)
        album.save
      end
    end
  end
end
