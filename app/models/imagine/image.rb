module Imagine
  case Imagine.orm.to_sym
  when :active_record
    class Image < ActiveRecord::Base
      image_accessor :file
      belongs_to :album
      validates_presence_of :file
    end
  when :mongoid
    class Image
      include Mongoid::Document
      include Mongoid::Timestamps
      include Imagine::ModelExtensions::Album
      field :name, :type => String
    end
  else
    raise Imagine::OrmNotSupportedError.new("#{Imagine.orm}, though we do accept nice pull requests :)")
  end
end
