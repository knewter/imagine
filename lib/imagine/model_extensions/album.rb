module Imagine
  module ModelExtensions
    module Album
      def self.included(model)
        model.validates :name, :presence => true
        model.has_many :images, :class_name => "Imagine::Image"
        model.send :extend,  ClassMethods
        model.send :include, InstanceMethods
        model.attr_accessible :name, :images
      end

      module ClassMethods
      end

      module InstanceMethods
      end
    end

  end
end
