module Fog
  module Compute
    class Oracle
      class Real
        def login()
          request(
            :expects  => [200],
            :method   => 'POST',
            :path     => 'login',
          )
        end
      end

      class Mock
        def login()
          response = Excon::Response.new
          response.status = 200
          response.body = ''
          response
        end
      end
    end
  end
end
