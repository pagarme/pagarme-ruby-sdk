# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # BalanceOperationsController
  class BalanceOperationsController < BaseController
    # TODO: type endpoint description here
    # @param [Integer] id Required parameter: Example:
    # @return [GetBalanceOperationResponse] response from the API call.
    def get_balance_operation_by_id(id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/balance/operations/{id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(id, key: 'id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(GetBalanceOperationResponse.method(:from_hash)))
        .execute
    end

    # TODO: type endpoint description here
    # @param [String] status Optional parameter: Example:
    # @param [DateTime] created_since Optional parameter: Example:
    # @param [DateTime] created_until Optional parameter: Example:
    # @param [String] recipient_id Optional parameter: Example:
    # @return [ListBalanceOperationResponse] response from the API call.
    def get_balance_operations(status: nil,
                               created_since: nil,
                               created_until: nil,
                               recipient_id: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/balance/operations',
                                     Server::DEFAULT)
                   .query_param(new_parameter(status, key: 'status'))
                   .query_param(new_parameter(created_since, key: 'created_since'))
                   .query_param(new_parameter(created_until, key: 'created_until'))
                   .query_param(new_parameter(recipient_id, key: 'recipient_id'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ListBalanceOperationResponse.method(:from_hash)))
        .execute
    end
  end
end
