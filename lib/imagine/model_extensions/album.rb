module Imagine
  module ModelExtensions
    module Album
      def self.included(model)
        model.validates :name, :presence => true
        model.has_many :images
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
