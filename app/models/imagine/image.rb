module Imagine
  case Imagine.orm.to_sym
  when :active_record
    class Image < ActiveRecord::Base
      include Imagine::ModelExtensions::Image
    end
  when :mongoid
    class Image
      include Mongoid::Document
      include Mongoid::Timestamps
      include Imagine::ModelExtensions::Image
      field :file_name, :type => String
      field :file_uid,  :type => String
      field :album_id,  :type => String
    end
  else
    raise Imagine::OrmNotSupportedError.new("#{Imagine.orm}, though we do accept nice pull requests :)")
  end
end
