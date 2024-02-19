# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # TransactionsController
  class TransactionsController < BaseController
    # TODO: type endpoint description here
    # @param [String] transaction_id Required parameter: Example:
    # @return [GetTransactionResponse] response from the API call
    def get_transaction(transaction_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/transactions/{transaction_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(transaction_id, key: 'transaction_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetTransactionResponse.method(:from_hash)))
        .execute
    end
  end
end
