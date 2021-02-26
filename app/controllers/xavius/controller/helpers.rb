module Xavius
  module Controller
    module Helpers
      private
      def set_resource
        instance_variable_set("@#{instance_name}", resource)
      end

      def current_resource
        instance_variable_get("@#{instance_name}")
      end

      def resource
        if params[:id]
          resource_class.find(params[:id])
        else
          resource_class.new
        end
      end

      def class_name
        controller_name.singularize.camelize.freeze
      end

      def resource_class
        class_name.constantize
      end

      def collection_name
        controller_name.gsub("/", "_").freeze
      end

      def instance_name
        controller_name.gsub("/", "_").singularize.freeze
      end

      def resource_human_name
        resource_class.model_name.human
      end
    end
  end
end
