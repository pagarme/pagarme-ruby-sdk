# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # ChargesController
  class ChargesController < BaseController
    # Updates the metadata from a charge
    # @param [String] charge_id Required parameter: The charge id
    # @param [UpdateMetadataRequest] request Required parameter: Request for
    # updating the charge metadata
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetChargeResponse] response from the API call
    def update_charge_metadata(charge_id,
                               request,
                               idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/Charges/{charge_id}/metadata',
                                     Server::DEFAULT)
                   .template_param(new_parameter(charge_id, key: 'charge_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetChargeResponse.method(:from_hash)))
        .execute
    end

    # Updates a charge's payment method
    # @param [String] charge_id Required parameter: Charge id
    # @param [UpdateChargePaymentMethodRequest] request Required parameter:
    # Request for updating the payment method from a charge
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetChargeResponse] response from the API call
    def update_charge_payment_method(charge_id,
                                     request,
                                     idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/charges/{charge_id}/payment-method',
                                     Server::DEFAULT)
                   .template_param(new_parameter(charge_id, key: 'charge_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetChargeResponse.method(:from_hash)))
        .execute
    end

    # TODO: type endpoint description here
    # @param [String] charge_id Required parameter: Charge Id
    # @param [Integer] page Optional parameter: Page number
    # @param [Integer] size Optional parameter: Page size
    # @return [ListChargeTransactionsResponse] response from the API call
    def get_charge_transactions(charge_id,
                                page: nil,
                                size: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/charges/{charge_id}/transactions',
                                     Server::DEFAULT)
                   .template_param(new_parameter(charge_id, key: 'charge_id')
                                    .should_encode(true))
                   .query_param(new_parameter(page, key: 'page'))
                   .query_param(new_parameter(size, key: 'size'))
                   .header_param(new_parameter('application/json', key: 'accept')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ListChargeTransactionsResponse.method(:from_hash)))
        .execute
    end

    # Updates the due date from a charge
    # @param [String] charge_id Required parameter: Charge Id
    # @param [UpdateChargeDueDateRequest] request Required parameter: Request
    # for updating the due date
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetChargeResponse] response from the API call
    def update_charge_due_date(charge_id,
                               request,
                               idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/Charges/{charge_id}/due-date',
                                     Server::DEFAULT)
                   .template_param(new_parameter(charge_id, key: 'charge_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetChargeResponse.method(:from_hash)))
        .execute
    end

    # Lists all charges
    # @param [Integer] page Optional parameter: Page number
    # @param [Integer] size Optional parameter: Page size
    # @param [String] code Optional parameter: Filter for charge's code
    # @param [String] status Optional parameter: Filter for charge's status
    # @param [String] payment_method Optional parameter: Filter for charge's
    # payment method
    # @param [String] customer_id Optional parameter: Filter for charge's
    # customer id
    # @param [String] order_id Optional parameter: Filter for charge's order
    # id
    # @param [DateTime] created_since Optional parameter: Filter for the
    # beginning of the range for charge's creation
    # @param [DateTime] created_until Optional parameter: Filter for the end of
    # the range for charge's creation
    # @return [ListChargesResponse] response from the API call
    def get_charges(page: nil,
                    size: nil,
                    code: nil,
                    status: nil,
                    payment_method: nil,
                    customer_id: nil,
                    order_id: nil,
                    created_since: nil,
                    created_until: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/charges',
                                     Server::DEFAULT)
                   .query_param(new_parameter(page, key: 'page'))
                   .query_param(new_parameter(size, key: 'size'))
                   .query_param(new_parameter(code, key: 'code'))
                   .query_param(new_parameter(status, key: 'status'))
                   .query_param(new_parameter(payment_method, key: 'payment_method'))
                   .query_param(new_parameter(customer_id, key: 'customer_id'))
                   .query_param(new_parameter(order_id, key: 'order_id'))
                   .query_param(new_parameter(created_since, key: 'created_since'))
                   .query_param(new_parameter(created_until, key: 'created_until'))
                   .header_param(new_parameter('application/json', key: 'accept')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ListChargesResponse.method(:from_hash)))
        .execute
    end

    # Captures a charge
    # @param [String] charge_id Required parameter: Charge id
    # @param [CreateCaptureChargeRequest] request Optional parameter: Request
    # for capturing a charge
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetChargeResponse] response from the API call
    def capture_charge(charge_id,
                       request: nil,
                       idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/charges/{charge_id}/capture',
                                     Server::DEFAULT)
                   .template_param(new_parameter(charge_id, key: 'charge_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetChargeResponse.method(:from_hash)))
        .execute
    end

    # Updates the card from a charge
    # @param [String] charge_id Required parameter: Charge id
    # @param [UpdateChargeCardRequest] request Required parameter: Request for
    # updating a charge's card
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetChargeResponse] response from the API call
    def update_charge_card(charge_id,
                           request,
                           idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/charges/{charge_id}/card',
                                     Server::DEFAULT)
                   .template_param(new_parameter(charge_id, key: 'charge_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetChargeResponse.method(:from_hash)))
        .execute
    end

    # Get a charge from its id
    # @param [String] charge_id Required parameter: Charge id
    # @return [GetChargeResponse] response from the API call
    def get_charge(charge_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/charges/{charge_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(charge_id, key: 'charge_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetChargeResponse.method(:from_hash)))
        .execute
    end

    # TODO: type endpoint description here
    # @param [String] status Required parameter: Example:
    # @param [DateTime] created_since Optional parameter: Example:
    # @param [DateTime] created_until Optional parameter: Example:
    # @return [GetChargesSummaryResponse] response from the API call
    def get_charges_summary(status,
                            created_since: nil,
                            created_until: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/charges/summary',
                                     Server::DEFAULT)
                   .query_param(new_parameter(status, key: 'status'))
                   .query_param(new_parameter(created_since, key: 'created_since'))
                   .query_param(new_parameter(created_until, key: 'created_until'))
                   .header_param(new_parameter('application/json', key: 'accept')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetChargesSummaryResponse.method(:from_hash)))
        .execute
    end

    # Retries a charge
    # @param [String] charge_id Required parameter: Charge id
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetChargeResponse] response from the API call
    def retry_charge(charge_id,
                     idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/charges/{charge_id}/retry',
                                     Server::DEFAULT)
                   .template_param(new_parameter(charge_id, key: 'charge_id')
                                    .should_encode(true))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json', key: 'accept')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetChargeResponse.method(:from_hash)))
        .execute
    end

    # Cancel a charge
    # @param [String] charge_id Required parameter: Charge id
    # @param [CreateCancelChargeRequest] request Optional parameter: Request for
    # cancelling a charge
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetChargeResponse] response from the API call
    def cancel_charge(charge_id,
                      request: nil,
                      idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/charges/{charge_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(charge_id, key: 'charge_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetChargeResponse.method(:from_hash)))
        .execute
    end

    # Creates a new charge
    # @param [CreateChargeRequest] request Required parameter: Request for
    # creating a charge
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetChargeResponse] response from the API call
    def create_charge(request,
                      idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/Charges',
                                     Server::DEFAULT)
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetChargeResponse.method(:from_hash)))
        .execute
    end

    # TODO: type endpoint description here
    # @param [String] charge_id Required parameter: Example:
    # @param [CreateConfirmPaymentRequest] request Optional parameter: Request
    # for confirm payment
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetChargeResponse] response from the API call
    def confirm_payment(charge_id,
                        request: nil,
                        idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/charges/{charge_id}/confirm-payment',
                                     Server::DEFAULT)
                   .template_param(new_parameter(charge_id, key: 'charge_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetChargeResponse.method(:from_hash)))
        .execute
    end
  end
end
