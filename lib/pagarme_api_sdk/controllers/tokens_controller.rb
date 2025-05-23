# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # TokensController
  class TokensController < BaseController
    # Gets a token from its id
    # @param [String] id Required parameter: Token id
    # @param [String] public_key Required parameter: Public key
    # @return [GetTokenResponse] response from the API call.
    def get_token(id,
                  public_key)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/tokens/{id}?appId={public_key}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(id, key: 'id')
                                    .should_encode(true))
                   .template_param(new_parameter(public_key, key: 'public_key')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(GetTokenResponse.method(:from_hash)))
        .execute
    end

    # TODO: type endpoint description here
    # @param [String] public_key Required parameter: Public key
    # @param [CreateTokenRequest] request Required parameter: Request for
    # creating a token
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetTokenResponse] response from the API call.
    def create_token(public_key,
                     request,
                     idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/tokens?appId={public_key}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(public_key, key: 'public_key')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(GetTokenResponse.method(:from_hash)))
        .execute
    end
  end
end
