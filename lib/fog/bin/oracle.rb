class Oracle < Fog::Bin
  class << self
    def class_for(key)
      case key
      when :compute
        Fog::Compute::Oracle
      else
        raise ArgumentError, "Unrecognized service: #{key}"
      end
    end

    def [](service)
      @@connections ||= Hash.new do |hash, key|
        hash[key] = case key
        when :compute
          Fog::Logger.warning("Oracle[:compute] is not recommended, use Compute[:oracle] for portability")
          Fog::Compute.new(:provider => 'Oracle')
        else
          raise ArgumentError, "Unrecognized service: #{key.inspect}"
        end
      end
      @@connections[service]
    end

    def services
      Fog::Oracle.services
    end
  end
end
