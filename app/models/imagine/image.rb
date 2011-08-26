module Imagine
  class Image < ActiveRecord::Base
    image_accessor :file
    belongs_to :album
  end
end
