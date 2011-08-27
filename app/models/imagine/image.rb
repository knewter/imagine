module Imagine
  class Image < ActiveRecord::Base
    image_accessor :file
    belongs_to :album
    validates_presence_of :file
  end
end
