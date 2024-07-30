# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # PayablesController
  class PayablesController < BaseController
    # TODO: type endpoint description here
    # @param [String] type Optional parameter: Example:
    # @param [String] split_id Optional parameter: Example:
    # @param [String] bulk_anticipation_id Optional parameter: Example:
    # @param [Integer] installment Optional parameter: Example:
    # @param [String] status Optional parameter: Example:
    # @param [String] recipient_id Optional parameter: Example:
    # @param [Integer] amount Optional parameter: Example:
    # @param [String] charge_id Optional parameter: Example:
    # @param [String] payment_date_until Optional parameter: Example:
    # @param [DateTime] payment_date_since Optional parameter: Example:
    # @param [DateTime] updated_until Optional parameter: Example:
    # @param [DateTime] updated_since Optional parameter: Example:
    # @param [DateTime] created_until Optional parameter: Example:
    # @param [DateTime] created_since Optional parameter: Example:
    # @param [String] liquidation_arrangement_id Optional parameter: Example:
    # @param [Integer] page Optional parameter: Example:
    # @param [Integer] size Optional parameter: Example:
    # @param [Integer] gateway_id Optional parameter: Example:
    # @return [ListPayablesResponse] response from the API call
    def get_payables(type: nil,
                     split_id: nil,
                     bulk_anticipation_id: nil,
                     installment: nil,
                     status: nil,
                     recipient_id: nil,
                     amount: nil,
                     charge_id: nil,
                     payment_date_until: nil,
                     payment_date_since: nil,
                     updated_until: nil,
                     updated_since: nil,
                     created_until: nil,
                     created_since: nil,
                     liquidation_arrangement_id: nil,
                     page: nil,
                     size: nil,
                     gateway_id: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/payables',
                                     Server::DEFAULT)
                   .query_param(new_parameter(type, key: 'type'))
                   .query_param(new_parameter(split_id, key: 'split_id'))
                   .query_param(new_parameter(bulk_anticipation_id, key: 'bulk_anticipation_id'))
                   .query_param(new_parameter(installment, key: 'installment'))
                   .query_param(new_parameter(status, key: 'status'))
                   .query_param(new_parameter(recipient_id, key: 'recipient_id'))
                   .query_param(new_parameter(amount, key: 'amount'))
                   .query_param(new_parameter(charge_id, key: 'charge_id'))
                   .query_param(new_parameter(payment_date_until, key: 'payment_date_until'))
                   .query_param(new_parameter(payment_date_since, key: 'payment_date_since'))
                   .query_param(new_parameter(updated_until, key: 'updated_until'))
                   .query_param(new_parameter(updated_since, key: 'updated_since'))
                   .query_param(new_parameter(created_until, key: 'created_until'))
                   .query_param(new_parameter(created_since, key: 'created_since'))
                   .query_param(new_parameter(liquidation_arrangement_id, key: 'liquidation_arrangement_id'))
                   .query_param(new_parameter(page, key: 'page'))
                   .query_param(new_parameter(size, key: 'size'))
                   .query_param(new_parameter(gateway_id, key: 'gateway_id'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ListPayablesResponse.method(:from_hash)))
        .execute
    end

    # TODO: type endpoint description here
    # @param [Integer] id Required parameter: Example:
    # @return [GetPayableResponse] response from the API call
    def get_payable_by_id(id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/payables/{id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(id, key: 'id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(GetPayableResponse.method(:from_hash)))
        .execute
    end
  end
end
