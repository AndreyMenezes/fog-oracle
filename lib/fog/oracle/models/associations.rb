module Fog
  module Associations
    class OracleDefault < Default
      def create_setter
        model.class_eval <<-EOS, __FILE__, __LINE__
          def #{name}=(new_#{name})
            associations[:#{name}] = new_#{name}
          end
        EOS
      end

      def create_getter
        model.class_eval <<-EOS, __FILE__, __LINE__
          def #{name}
            associations[:#{name}]
          end
        EOS
      end
    end

    class OracleOneModel < OracleDefault
      def create_setter
        model.class_eval <<-EOS, __FILE__, __LINE__
          def #{name}=(new_#{name})
            return if new_#{name}.nil?
            associations[:#{name}] = service.send(self.class.associations[:#{name}]).new(new_#{name})
          end
        EOS
      end
    end

    class OracleManyModels < OracleDefault
      def create_setter
        model.class_eval <<-EOS, __FILE__, __LINE__
          def #{name}=(new_#{name})
            return if new_#{name}.nil?
            collection = service.send(self.class.associations[:#{name}])
            associations[:#{name}] = Array(new_#{name}).map do |association|
              collection.new(association)
            end
          end
        EOS
      end
    end

    class OracleOneIdentity < OracleDefault
      attr_reader :details_name

      def initialize(model, name, collection_name, options)
        @details_name = options[:details_name]
        super(model, name, collection_name, options)
      end

      def create_getter
        super

        model.class_eval <<-EOS, __FILE__, __LINE__
          def #{details_name}
            return nil if associations[:#{name}].nil?
            service.send(self.class.associations[:#{name}]).get(associations[:#{name}])
          end
        EOS
      end
    end

    class OracleManyIdentities < OracleDefault
      attr_reader :all_name

      def initialize(model, name, collection_name, options)
        @all_name = options[:all_name]
        super(model, name, collection_name, options)
      end

      def create_getter
        super

        model.class_eval <<-EOS, __FILE__, __LINE__
          def #{all_name}
            return [] if associations[:#{name}].nil?
            data = Array(associations[:#{name}]).map do |association|
              service.send(self.class.associations[:#{name}]).get(association)
            end
            #{association_class}.new(data)
          end
        EOS
      end
    end
  end
end
