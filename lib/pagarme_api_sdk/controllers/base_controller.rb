# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # BaseController.
  class BaseController
    include CoreLibrary
    attr_accessor :config, :http_call_back

    def self.user_agent
      'PagarmeApiSDK - Ruby 6.8.13'
    end


    GLOBAL_ERRORS = {
      'default' => ErrorCase.new
                            .error_message('HTTP response not OK.')
                            .exception_type(APIException),
      '400' => ErrorCase.new
                        .error_message('Invalid request')
                        .exception_type(ErrorException),
      '401' => ErrorCase.new
                        .error_message('Invalid API key')
                        .exception_type(ErrorException),
      '404' => ErrorCase.new
                        .error_message('An informed resource was not found')
                        .exception_type(ErrorException),
      '412' => ErrorCase.new
                        .error_message('Business validation error')
                        .exception_type(ErrorException),
      '422' => ErrorCase.new
                        .error_message('Contract validation error')
                        .exception_type(ErrorException),
      '500' => ErrorCase.new
                        .error_message('Internal server error')
                        .exception_type(ErrorException)
    }.freeze

    # Initialization constructor.
    # @param [GlobalConfiguration] global_configuration The instance of GlobalConfiguration.
    def initialize(global_configuration)
      @global_configuration = global_configuration
      @config = @global_configuration.client_configuration
      @http_call_back = @config.http_callback
      @api_call = ApiCall.new(@global_configuration)
    end

    # Creates a new builder for the Api Call instance.
    # @return [ApiCall] The instance of ApiCall.
    def new_api_call_builder
      @api_call.new_builder
    end

    # Creates a new instance of the request builder.
    # @param [String] http_method The HTTP method to use in the request.
    # @param [String] path The endpoint path to use in the request.
    # @param [String] server The server to extract the base uri for the request.
    # @return [RequestBuilder] The instance of RequestBuilder.
    def new_request_builder(http_method, path, server)
      RequestBuilder.new
                    .http_method(http_method)
                    .path(path)
                    .server(server)
    end

    # Creates a new instance of the response handler.
    # @return [ResponseHandler] The instance of ResponseHandler.
    def new_response_handler
      ResponseHandler.new
    end

    # Creates a new instance of the parameter.
    # @param [String|optional] key The key of the parameter.
    # @param [Object] value The value of the parameter.
    # @return [Parameter] The instance of Parameter.
    def new_parameter(value, key: nil)
      Parameter.new
               .key(key)
               .value(value)
    end
  end
end
