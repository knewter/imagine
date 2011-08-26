module Imagine
  module Warehouses
    class Image
      def self.find(album, id)
        # returns an image from a given album
        album.images.find(id)
      end

      def self.new(album, params=nil)
        # returns a new image associated with the given album
        params ||= {}
        ::Imagine::Image.new(params.merge({:album_id => album.id}))
      end

      def self.save(image)
        image.save
      end
    end
  end
end
