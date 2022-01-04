# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # BaseController.
  class BaseController
    attr_accessor :config, :http_call_back

    def initialize(config, http_call_back: nil)
      @config = config
      @http_call_back = http_call_back

      @global_headers = {
        'user-agent' => get_user_agent
      }
    end

    def validate_parameters(args)
      args.each do |_name, value|
        raise ArgumentError, "Required parameter #{_name} cannot be nil." if value.nil?
      end
    end

    def execute_request(request, binary: false)
      @http_call_back&.on_before_request(request)

      APIHelper.clean_hash(request.headers)
      request.headers.merge!(@global_headers)

      response = if binary
                   config.http_client.execute_as_binary(request)
                 else
                   config.http_client.execute_as_string(request)
                 end
      @http_call_back&.on_after_response(response)

      response
    end

    def validate_response(response)
      case response.status_code
      when 400
        raise ErrorException.new(
          'Invalid request',
          response
        )
      when 401
        raise ErrorException.new(
          'Invalid API key',
          response
        )
      when 404
        raise ErrorException.new(
          'An informed resource was not found',
          response
        )
      when 412
        raise ErrorException.new(
          'Business validation error',
          response
        )
      when 422
        raise ErrorException.new(
          'Contract validation error',
          response
        )
      when 500
        raise ErrorException.new(
          'Internal server error',
          response
        )
      end
      raise APIException.new 'HTTP Response Not OK', response unless
        response.status_code.between?(200, 208) # [200,208] = HTTP OK
    end

    def get_user_agent
      user_agent = 'PagarmeCoreApi - Ruby 6.2.0'
      user_agent
    end
  end
end