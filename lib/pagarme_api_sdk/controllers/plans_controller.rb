# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # PlansController
  class PlansController < BaseController
    # Gets a plan
    # @param [String] plan_id Required parameter: Plan id
    # @return [GetPlanResponse] response from the API call
    def get_plan(plan_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/plans/{plan_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(plan_id, key: 'plan_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetPlanResponse.method(:from_hash)))
        .execute
    end

    # Deletes a plan
    # @param [String] plan_id Required parameter: Plan id
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetPlanResponse] response from the API call
    def delete_plan(plan_id,
                    idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/plans/{plan_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(plan_id, key: 'plan_id')
                                    .should_encode(true))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json', key: 'accept')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetPlanResponse.method(:from_hash)))
        .execute
    end

    # Updates the metadata from a plan
    # @param [String] plan_id Required parameter: The plan id
    # @param [UpdateMetadataRequest] request Required parameter: Request for
    # updating the plan metadata
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetPlanResponse] response from the API call
    def update_plan_metadata(plan_id,
                             request,
                             idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/Plans/{plan_id}/metadata',
                                     Server::DEFAULT)
                   .template_param(new_parameter(plan_id, key: 'plan_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetPlanResponse.method(:from_hash)))
        .execute
    end

    # Updates a plan item
    # @param [String] plan_id Required parameter: Plan id
    # @param [String] plan_item_id Required parameter: Plan item id
    # @param [UpdatePlanItemRequest] body Required parameter: Request for
    # updating the plan item
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetPlanItemResponse] response from the API call
    def update_plan_item(plan_id,
                         plan_item_id,
                         body,
                         idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/plans/{plan_id}/items/{plan_item_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(plan_id, key: 'plan_id')
                                    .should_encode(true))
                   .template_param(new_parameter(plan_item_id, key: 'plan_item_id')
                                    .should_encode(true))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetPlanItemResponse.method(:from_hash)))
        .execute
    end

    # Adds a new item to a plan
    # @param [String] plan_id Required parameter: Plan id
    # @param [CreatePlanItemRequest] request Required parameter: Request for
    # creating a plan item
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetPlanItemResponse] response from the API call
    def create_plan_item(plan_id,
                         request,
                         idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/plans/{plan_id}/items',
                                     Server::DEFAULT)
                   .template_param(new_parameter(plan_id, key: 'plan_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetPlanItemResponse.method(:from_hash)))
        .execute
    end

    # Gets a plan item
    # @param [String] plan_id Required parameter: Plan id
    # @param [String] plan_item_id Required parameter: Plan item id
    # @return [GetPlanItemResponse] response from the API call
    def get_plan_item(plan_id,
                      plan_item_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/plans/{plan_id}/items/{plan_item_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(plan_id, key: 'plan_id')
                                    .should_encode(true))
                   .template_param(new_parameter(plan_item_id, key: 'plan_item_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetPlanItemResponse.method(:from_hash)))
        .execute
    end

    # Creates a new plan
    # @param [CreatePlanRequest] body Required parameter: Request for creating a
    # plan
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetPlanResponse] response from the API call
    def create_plan(body,
                    idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/plans',
                                     Server::DEFAULT)
                   .body_param(new_parameter(body))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetPlanResponse.method(:from_hash)))
        .execute
    end

    # Removes an item from a plan
    # @param [String] plan_id Required parameter: Plan id
    # @param [String] plan_item_id Required parameter: Plan item id
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetPlanItemResponse] response from the API call
    def delete_plan_item(plan_id,
                         plan_item_id,
                         idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/plans/{plan_id}/items/{plan_item_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(plan_id, key: 'plan_id')
                                    .should_encode(true))
                   .template_param(new_parameter(plan_item_id, key: 'plan_item_id')
                                    .should_encode(true))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json', key: 'accept')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetPlanItemResponse.method(:from_hash)))
        .execute
    end

    # Gets all plans
    # @param [Integer] page Optional parameter: Page number
    # @param [Integer] size Optional parameter: Page size
    # @param [String] name Optional parameter: Filter for Plan's name
    # @param [String] status Optional parameter: Filter for Plan's status
    # @param [String] billing_type Optional parameter: Filter for plan's billing
    # type
    # @param [DateTime] created_since Optional parameter: Filter for plan's
    # creation date start range
    # @param [DateTime] created_until Optional parameter: Filter for plan's
    # creation date end range
    # @return [ListPlansResponse] response from the API call
    def get_plans(page: nil,
                  size: nil,
                  name: nil,
                  status: nil,
                  billing_type: nil,
                  created_since: nil,
                  created_until: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/plans',
                                     Server::DEFAULT)
                   .query_param(new_parameter(page, key: 'page'))
                   .query_param(new_parameter(size, key: 'size'))
                   .query_param(new_parameter(name, key: 'name'))
                   .query_param(new_parameter(status, key: 'status'))
                   .query_param(new_parameter(billing_type, key: 'billing_type'))
                   .query_param(new_parameter(created_since, key: 'created_since'))
                   .query_param(new_parameter(created_until, key: 'created_until'))
                   .header_param(new_parameter('application/json', key: 'accept')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ListPlansResponse.method(:from_hash)))
        .execute
    end

    # Updates a plan
    # @param [String] plan_id Required parameter: Plan id
    # @param [UpdatePlanRequest] request Required parameter: Request for
    # updating a plan
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetPlanResponse] response from the API call
    def update_plan(plan_id,
                    request,
                    idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/plans/{plan_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(plan_id, key: 'plan_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetPlanResponse.method(:from_hash)))
        .execute
    end
  end
end
