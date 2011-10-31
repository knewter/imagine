module Imagine
  case Imagine.orm.to_sym
  when :active_record
    class Album < ActiveRecord::Base
      include Imagine::ModelExtensions::Album
      set_table_name :imagine_albums
    end
  when :mongoid
    class Album
      include Mongoid::Document
      include Mongoid::Timestamps
      include Imagine::ModelExtensions::Album
      store_in :imagine_albums
      field :name, :type => String
    end
  else
    raise Imagine::OrmNotSupportedError.new("#{Imagine.orm}, though we do accept nice pull requests :)")
  end
end
