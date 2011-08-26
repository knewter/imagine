module Imagine
  class Album < ActiveRecord::Base
    validates :name, :presence => true
    has_many :images
  end
end
