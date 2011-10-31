module Imagine
  module ModelExtensions
    module Image
      def self.included(model)
        model.image_accessor :file
        model.belongs_to :album, :class_name => "Imagine::Album"
        model.validates :file, :presence => true
        model.send :extend,  ClassMethods
        model.send :include, InstanceMethods
      end

      module ClassMethods
      end

      module InstanceMethods
      end
    end

  end
end
