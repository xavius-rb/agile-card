module Xavius
  module Controller
    class Base < ActionController::Base
      include Helpers

      layout 'application' # defines layout or inherits from ApplicationController

      before_action :set_resource, except: [:index]

      def index
        instance_variable_set("@#{collection_name}", resource_class.all)
      end

      def show; end;
      def edit; end;
      def new; end;

      def create
        instance_variable_set("@#{instance_name}", resource_class.new(resource_params))

        respond_to do |format|
          if current_resource.save
            format.html { redirect_to current_resource, notice: success_message }
            format.json { render :show, status: :created, location: current_resource }
          else
            format.html { render :new }
            format.json { render json: current_resource.errors, status: :unprocessable_entity }
          end
        end
      end

      def update
        respond_to do |format|
          if current_resource.update(resource_params)
            format.html { redirect_to current_resource, notice: success_message }
            format.json { render :show, status: :ok, location: current_resource }
          else
            format.html { render :edit }
            format.json { render json: current_resource.errors, status: :unprocessable_entity }
          end
        end
      end

      def destroy
        current_resource.destroy
        respond_to do |format|
          format.html { redirect_to url_for(resource_class), notice: success_message }
          format.json { head :no_content }
        end
      end

      private

      def success_message
        I18n.t('.success', default: t(:success, scope: [:resource, params[:action].to_sym], resource_name: resource_human_name))
      end
    end
  end
end
