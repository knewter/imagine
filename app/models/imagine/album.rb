module Imagine
  case Imagine.orm.to_sym
  when :active_record
    class Album < ActiveRecord::Base
      include Imagine::ModelExtensions::Album
    end
  when :mongoid
    class Album
      include Mongoid::Document
      include Mongoid::Timestamps
      include Imagine::ModelExtensions::Album
      field :name, :type => String
    end
  else
    raise Imagine::OrmNotSupportedError.new("#{Imagine.orm}, though we do accept nice pull requests :)")
  end
end
