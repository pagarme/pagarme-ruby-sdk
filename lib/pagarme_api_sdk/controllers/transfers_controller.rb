# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # TransfersController
  class TransfersController < BaseController
    # TODO: type endpoint description here
    # @param [String] transfer_id Required parameter: Example:
    # @return [GetTransfer] response from the API call.
    def get_transfer_by_id(transfer_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/transfers/{transfer_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(transfer_id, key: 'transfer_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(GetTransfer.method(:from_hash)))
        .execute
    end

    # TODO: type endpoint description here
    # @param [CreateTransfer] request Required parameter: Example:
    # @return [GetTransfer] response from the API call.
    def create_transfer(request)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/transfers/recipients',
                                     Server::DEFAULT)
                   .body_param(new_parameter(request))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(GetTransfer.method(:from_hash)))
        .execute
    end

    # Gets all transfers
    # @return [ListTransfers] response from the API call.
    def get_transfers
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/transfers',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ListTransfers.method(:from_hash)))
        .execute
    end
  end
end
