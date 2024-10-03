# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # InvoicesController
  class InvoicesController < BaseController
    # Updates the metadata from an invoice
    # @param [String] invoice_id Required parameter: The invoice id
    # @param [UpdateMetadataRequest] request Required parameter: Request for
    # updating the invoice metadata
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetInvoiceResponse] response from the API call.
    def update_invoice_metadata(invoice_id,
                                request,
                                idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/invoices/{invoice_id}/metadata',
                                     Server::DEFAULT)
                   .template_param(new_parameter(invoice_id, key: 'invoice_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(GetInvoiceResponse.method(:from_hash)))
        .execute
    end

    # TODO: type endpoint description here
    # @param [String] subscription_id Required parameter: Subscription Id
    # @return [GetInvoiceResponse] response from the API call.
    def get_partial_invoice(subscription_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/subscriptions/{subscription_id}/partial-invoice',
                                     Server::DEFAULT)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(GetInvoiceResponse.method(:from_hash)))
        .execute
    end

    # Cancels an invoice
    # @param [String] invoice_id Required parameter: Invoice id
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetInvoiceResponse] response from the API call.
    def cancel_invoice(invoice_id,
                       idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/invoices/{invoice_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(invoice_id, key: 'invoice_id')
                                    .should_encode(true))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(GetInvoiceResponse.method(:from_hash)))
        .execute
    end

    # Create an Invoice
    # @param [String] subscription_id Required parameter: Subscription Id
    # @param [String] cycle_id Required parameter: Cycle Id
    # @param [CreateInvoiceRequest] request Optional parameter: Example:
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetInvoiceResponse] response from the API call.
    def create_invoice(subscription_id,
                       cycle_id,
                       request: nil,
                       idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscriptions/{subscription_id}/cycles/{cycle_id}/pay',
                                     Server::DEFAULT)
                   .template_param(new_parameter(subscription_id, key: 'subscription_id')
                                    .should_encode(true))
                   .template_param(new_parameter(cycle_id, key: 'cycle_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(GetInvoiceResponse.method(:from_hash)))
        .execute
    end

    # Gets all invoices
    # @param [Integer] page Optional parameter: Page number
    # @param [Integer] size Optional parameter: Page size
    # @param [String] code Optional parameter: Filter for Invoice's code
    # @param [String] customer_id Optional parameter: Filter for Invoice's
    # customer id
    # @param [String] subscription_id Optional parameter: Filter for Invoice's
    # subscription id
    # @param [DateTime] created_since Optional parameter: Filter for Invoice's
    # creation date start range
    # @param [DateTime] created_until Optional parameter: Filter for Invoices
    # creation date end range
    # @param [String] status Optional parameter: Filter for Invoice's status
    # @param [DateTime] due_since Optional parameter: Filter for Invoice's due
    # date start range
    # @param [DateTime] due_until Optional parameter: Filter for Invoice's due
    # date end range
    # @param [String] customer_document Optional parameter: Example:
    # @return [ListInvoicesResponse] response from the API call.
    def get_invoices(page: nil,
                     size: nil,
                     code: nil,
                     customer_id: nil,
                     subscription_id: nil,
                     created_since: nil,
                     created_until: nil,
                     status: nil,
                     due_since: nil,
                     due_until: nil,
                     customer_document: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/invoices',
                                     Server::DEFAULT)
                   .query_param(new_parameter(page, key: 'page'))
                   .query_param(new_parameter(size, key: 'size'))
                   .query_param(new_parameter(code, key: 'code'))
                   .query_param(new_parameter(customer_id, key: 'customer_id'))
                   .query_param(new_parameter(subscription_id, key: 'subscription_id'))
                   .query_param(new_parameter(created_since, key: 'created_since'))
                   .query_param(new_parameter(created_until, key: 'created_until'))
                   .query_param(new_parameter(status, key: 'status'))
                   .query_param(new_parameter(due_since, key: 'due_since'))
                   .query_param(new_parameter(due_until, key: 'due_until'))
                   .query_param(new_parameter(customer_document, key: 'customer_document'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ListInvoicesResponse.method(:from_hash)))
        .execute
    end

    # Gets an invoice
    # @param [String] invoice_id Required parameter: Invoice Id
    # @return [GetInvoiceResponse] response from the API call.
    def get_invoice(invoice_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/invoices/{invoice_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(invoice_id, key: 'invoice_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(GetInvoiceResponse.method(:from_hash)))
        .execute
    end

    # Updates the status from an invoice
    # @param [String] invoice_id Required parameter: Invoice Id
    # @param [UpdateInvoiceStatusRequest] request Required parameter: Request
    # for updating an invoice's status
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetInvoiceResponse] response from the API call.
    def update_invoice_status(invoice_id,
                              request,
                              idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/invoices/{invoice_id}/status',
                                     Server::DEFAULT)
                   .template_param(new_parameter(invoice_id, key: 'invoice_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(GetInvoiceResponse.method(:from_hash)))
        .execute
    end
  end
end
