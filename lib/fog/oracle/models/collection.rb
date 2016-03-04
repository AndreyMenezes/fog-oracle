require 'fog/core/collection'

module Fog
  module Oracle
    class Collection < Fog::Collection
      # It's important to store the whole response, it contains e.g. important info about whether there is another
      # page of data.
      attr_accessor :response

      def id_value(id)
        if id.is_a?(Hash)
          id["value"]
        else
          id
        end
      end

      def load_response(response)
        objects = response.body

        clear && objects.each { |object| self << new(object) }
        self.response = response
        self
      end

      def new_from_response(response)
        obj = new(response.body)
        obj.response = response
        obj
      end

      ##################################################################################################################
      # Abstract base class methods, please keep the consistent naming in all subclasses of the Collection class

      # Returns detailed list of records
      def all(options = {})
        raise Fog::Oracle::Errors::InterfaceNotImplemented.new('Method :all is not implemented')
      end

      # Gets record given record's id
      def get(id)
        raise Fog::Oracle::Errors::InterfaceNotImplemented.new('Method :get is not implemented')
      end
      alias_method :find_by_id, :get
    end
  end
end
