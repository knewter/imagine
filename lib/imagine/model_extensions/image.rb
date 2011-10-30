module Imagine
  module ModelExtensions
    module Image
      def self.included(model)
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
