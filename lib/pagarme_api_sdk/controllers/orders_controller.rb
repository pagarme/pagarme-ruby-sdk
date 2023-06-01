# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # OrdersController
  class OrdersController < BaseController
    # Gets all orders
    # @param [Integer] page Optional parameter: Page number
    # @param [Integer] size Optional parameter: Page size
    # @param [String] code Optional parameter: Filter for order's code
    # @param [String] status Optional parameter: Filter for order's status
    # @param [DateTime] created_since Optional parameter: Filter for order's
    # creation date start range
    # @param [DateTime] created_until Optional parameter: Filter for order's
    # creation date end range
    # @param [String] customer_id Optional parameter: Filter for order's
    # customer id
    # @return [ListOrderResponse] response from the API call
    def get_orders(page: nil,
                   size: nil,
                   code: nil,
                   status: nil,
                   created_since: nil,
                   created_until: nil,
                   customer_id: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/orders',
                                     Server::DEFAULT)
                   .query_param(new_parameter(page, key: 'page'))
                   .query_param(new_parameter(size, key: 'size'))
                   .query_param(new_parameter(code, key: 'code'))
                   .query_param(new_parameter(status, key: 'status'))
                   .query_param(new_parameter(created_since, key: 'created_since'))
                   .query_param(new_parameter(created_until, key: 'created_until'))
                   .query_param(new_parameter(customer_id, key: 'customer_id'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ListOrderResponse.method(:from_hash)))
        .execute
    end

    # TODO: type endpoint description here
    # @param [String] order_id Required parameter: Order Id
    # @param [String] item_id Required parameter: Item Id
    # @return [GetOrderItemResponse] response from the API call
    def get_order_item(order_id,
                       item_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/orders/{orderId}/items/{itemId}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(order_id, key: 'orderId')
                                    .should_encode(true))
                   .template_param(new_parameter(item_id, key: 'itemId')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetOrderItemResponse.method(:from_hash)))
        .execute
    end

    # Gets an order
    # @param [String] order_id Required parameter: Order id
    # @return [GetOrderResponse] response from the API call
    def get_order(order_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/orders/{order_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(order_id, key: 'order_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetOrderResponse.method(:from_hash)))
        .execute
    end

    # TODO: type endpoint description here
    # @param [String] id Required parameter: Order Id
    # @param [UpdateOrderStatusRequest] request Required parameter: Update Order
    # Model
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetOrderResponse] response from the API call
    def close_order(id,
                    request,
                    idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/orders/{id}/closed',
                                     Server::DEFAULT)
                   .template_param(new_parameter(id, key: 'id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetOrderResponse.method(:from_hash)))
        .execute
    end

    # Creates a new Order
    # @param [CreateOrderRequest] body Required parameter: Request for creating
    # an order
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetOrderResponse] response from the API call
    def create_order(body,
                     idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/orders',
                                     Server::DEFAULT)
                   .body_param(new_parameter(body))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetOrderResponse.method(:from_hash)))
        .execute
    end

    # TODO: type endpoint description here
    # @param [String] order_id Required parameter: Order Id
    # @param [String] item_id Required parameter: Item Id
    # @param [UpdateOrderItemRequest] request Required parameter: Item Model
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetOrderItemResponse] response from the API call
    def update_order_item(order_id,
                          item_id,
                          request,
                          idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/orders/{orderId}/items/{itemId}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(order_id, key: 'orderId')
                                    .should_encode(true))
                   .template_param(new_parameter(item_id, key: 'itemId')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetOrderItemResponse.method(:from_hash)))
        .execute
    end

    # TODO: type endpoint description here
    # @param [String] order_id Required parameter: Order Id
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetOrderResponse] response from the API call
    def delete_all_order_items(order_id,
                               idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/orders/{orderId}/items',
                                     Server::DEFAULT)
                   .template_param(new_parameter(order_id, key: 'orderId')
                                    .should_encode(true))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetOrderResponse.method(:from_hash)))
        .execute
    end

    # Updates the metadata from an order
    # @param [String] order_id Required parameter: The order id
    # @param [UpdateMetadataRequest] request Required parameter: Request for
    # updating the order metadata
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetOrderResponse] response from the API call
    def update_order_metadata(order_id,
                              request,
                              idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/Orders/{order_id}/metadata',
                                     Server::DEFAULT)
                   .template_param(new_parameter(order_id, key: 'order_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetOrderResponse.method(:from_hash)))
        .execute
    end

    # TODO: type endpoint description here
    # @param [String] order_id Required parameter: Order Id
    # @param [String] item_id Required parameter: Item Id
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetOrderItemResponse] response from the API call
    def delete_order_item(order_id,
                          item_id,
                          idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/orders/{orderId}/items/{itemId}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(order_id, key: 'orderId')
                                    .should_encode(true))
                   .template_param(new_parameter(item_id, key: 'itemId')
                                    .should_encode(true))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetOrderItemResponse.method(:from_hash)))
        .execute
    end

    # TODO: type endpoint description here
    # @param [String] order_id Required parameter: Order Id
    # @param [CreateOrderItemRequest] request Required parameter: Order Item
    # Model
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetOrderItemResponse] response from the API call
    def create_order_item(order_id,
                          request,
                          idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/orders/{orderId}/items',
                                     Server::DEFAULT)
                   .template_param(new_parameter(order_id, key: 'orderId')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetOrderItemResponse.method(:from_hash)))
        .execute
    end
  end
end
