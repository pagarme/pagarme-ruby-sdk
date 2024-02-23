# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # CustomersController
  class CustomersController < BaseController
    # Updates a card
    # @param [String] customer_id Required parameter: Customer Id
    # @param [String] card_id Required parameter: Card id
    # @param [UpdateCardRequest] request Required parameter: Request for
    # updating a card
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetCardResponse] response from the API call
    def update_card(customer_id,
                    card_id,
                    request,
                    idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/customers/{customer_id}/cards/{card_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(customer_id, key: 'customer_id')
                                    .should_encode(true))
                   .template_param(new_parameter(card_id, key: 'card_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetCardResponse.method(:from_hash)))
        .execute
    end

    # Updates an address
    # @param [String] customer_id Required parameter: Customer Id
    # @param [String] address_id Required parameter: Address Id
    # @param [UpdateAddressRequest] request Required parameter: Request for
    # updating an address
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetAddressResponse] response from the API call
    def update_address(customer_id,
                       address_id,
                       request,
                       idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/customers/{customer_id}/addresses/{address_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(customer_id, key: 'customer_id')
                                    .should_encode(true))
                   .template_param(new_parameter(address_id, key: 'address_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetAddressResponse.method(:from_hash)))
        .execute
    end

    # Delete a customer's access token
    # @param [String] customer_id Required parameter: Customer Id
    # @param [String] token_id Required parameter: Token Id
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetAccessTokenResponse] response from the API call
    def delete_access_token(customer_id,
                            token_id,
                            idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/customers/{customer_id}/access-tokens/{token_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(customer_id, key: 'customer_id')
                                    .should_encode(true))
                   .template_param(new_parameter(token_id, key: 'token_id')
                                    .should_encode(true))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetAccessTokenResponse.method(:from_hash)))
        .execute
    end

    # Creates a new customer
    # @param [CreateCustomerRequest] request Required parameter: Request for
    # creating a customer
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetCustomerResponse] response from the API call
    def create_customer(request,
                        idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/customers',
                                     Server::DEFAULT)
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetCustomerResponse.method(:from_hash)))
        .execute
    end

    # Creates a new address for a customer
    # @param [String] customer_id Required parameter: Customer Id
    # @param [CreateAddressRequest] request Required parameter: Request for
    # creating an address
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetAddressResponse] response from the API call
    def create_address(customer_id,
                       request,
                       idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/customers/{customer_id}/addresses',
                                     Server::DEFAULT)
                   .template_param(new_parameter(customer_id, key: 'customer_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetAddressResponse.method(:from_hash)))
        .execute
    end

    # Delete a Customer's access tokens
    # @param [String] customer_id Required parameter: Customer Id
    # @return [ListAccessTokensResponse] response from the API call
    def delete_access_tokens(customer_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/customers/{customer_id}/access-tokens/',
                                     Server::DEFAULT)
                   .template_param(new_parameter(customer_id, key: 'customer_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ListAccessTokensResponse.method(:from_hash)))
        .execute
    end

    # Get a customer's address
    # @param [String] customer_id Required parameter: Customer id
    # @param [String] address_id Required parameter: Address Id
    # @return [GetAddressResponse] response from the API call
    def get_address(customer_id,
                    address_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/customers/{customer_id}/addresses/{address_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(customer_id, key: 'customer_id')
                                    .should_encode(true))
                   .template_param(new_parameter(address_id, key: 'address_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetAddressResponse.method(:from_hash)))
        .execute
    end

    # Delete a Customer's address
    # @param [String] customer_id Required parameter: Customer Id
    # @param [String] address_id Required parameter: Address Id
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetAddressResponse] response from the API call
    def delete_address(customer_id,
                       address_id,
                       idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/customers/{customer_id}/addresses/{address_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(customer_id, key: 'customer_id')
                                    .should_encode(true))
                   .template_param(new_parameter(address_id, key: 'address_id')
                                    .should_encode(true))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetAddressResponse.method(:from_hash)))
        .execute
    end

    # Creates a new card for a customer
    # @param [String] customer_id Required parameter: Customer id
    # @param [CreateCardRequest] request Required parameter: Request for
    # creating a card
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetCardResponse] response from the API call
    def create_card(customer_id,
                    request,
                    idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/customers/{customer_id}/cards',
                                     Server::DEFAULT)
                   .template_param(new_parameter(customer_id, key: 'customer_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetCardResponse.method(:from_hash)))
        .execute
    end

    # Get all Customers
    # @param [String] name Optional parameter: Name of the Customer
    # @param [String] document Optional parameter: Document of the Customer
    # @param [Integer] page Optional parameter: Current page the the search
    # @param [Integer] size Optional parameter: Quantity pages of the search
    # @param [String] email Optional parameter: Customer's email
    # @param [String] code Optional parameter: Customer's code
    # @return [ListCustomersResponse] response from the API call
    def get_customers(name: nil,
                      document: nil,
                      page: 1,
                      size: 10,
                      email: nil,
                      code: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/customers',
                                     Server::DEFAULT)
                   .query_param(new_parameter(name, key: 'name'))
                   .query_param(new_parameter(document, key: 'document'))
                   .query_param(new_parameter(page, key: 'page'))
                   .query_param(new_parameter(size, key: 'size'))
                   .query_param(new_parameter(email, key: 'email'))
                   .query_param(new_parameter(code, key: 'Code'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ListCustomersResponse.method(:from_hash)))
        .execute
    end

    # Updates a customer
    # @param [String] customer_id Required parameter: Customer id
    # @param [UpdateCustomerRequest] request Required parameter: Request for
    # updating a customer
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetCustomerResponse] response from the API call
    def update_customer(customer_id,
                        request,
                        idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/customers/{customer_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(customer_id, key: 'customer_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetCustomerResponse.method(:from_hash)))
        .execute
    end

    # Creates a access token for a customer
    # @param [String] customer_id Required parameter: Customer Id
    # @param [CreateAccessTokenRequest] request Required parameter: Request for
    # creating a access token
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetAccessTokenResponse] response from the API call
    def create_access_token(customer_id,
                            request,
                            idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/customers/{customer_id}/access-tokens',
                                     Server::DEFAULT)
                   .template_param(new_parameter(customer_id, key: 'customer_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetAccessTokenResponse.method(:from_hash)))
        .execute
    end

    # Get all access tokens from a customer
    # @param [String] customer_id Required parameter: Customer Id
    # @param [Integer] page Optional parameter: Page number
    # @param [Integer] size Optional parameter: Page size
    # @return [ListAccessTokensResponse] response from the API call
    def get_access_tokens(customer_id,
                          page: nil,
                          size: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/customers/{customer_id}/access-tokens',
                                     Server::DEFAULT)
                   .template_param(new_parameter(customer_id, key: 'customer_id')
                                    .should_encode(true))
                   .query_param(new_parameter(page, key: 'page'))
                   .query_param(new_parameter(size, key: 'size'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ListAccessTokensResponse.method(:from_hash)))
        .execute
    end

    # Get all cards from a customer
    # @param [String] customer_id Required parameter: Customer Id
    # @param [Integer] page Optional parameter: Page number
    # @param [Integer] size Optional parameter: Page size
    # @return [ListCardsResponse] response from the API call
    def get_cards(customer_id,
                  page: nil,
                  size: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/customers/{customer_id}/cards',
                                     Server::DEFAULT)
                   .template_param(new_parameter(customer_id, key: 'customer_id')
                                    .should_encode(true))
                   .query_param(new_parameter(page, key: 'page'))
                   .query_param(new_parameter(size, key: 'size'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ListCardsResponse.method(:from_hash)))
        .execute
    end

    # Renew a card
    # @param [String] customer_id Required parameter: Customer id
    # @param [String] card_id Required parameter: Card Id
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetCardResponse] response from the API call
    def renew_card(customer_id,
                   card_id,
                   idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/customers/{customer_id}/cards/{card_id}/renew',
                                     Server::DEFAULT)
                   .template_param(new_parameter(customer_id, key: 'customer_id')
                                    .should_encode(true))
                   .template_param(new_parameter(card_id, key: 'card_id')
                                    .should_encode(true))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetCardResponse.method(:from_hash)))
        .execute
    end

    # Get a Customer's access token
    # @param [String] customer_id Required parameter: Customer Id
    # @param [String] token_id Required parameter: Token Id
    # @return [GetAccessTokenResponse] response from the API call
    def get_access_token(customer_id,
                         token_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/customers/{customer_id}/access-tokens/{token_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(customer_id, key: 'customer_id')
                                    .should_encode(true))
                   .template_param(new_parameter(token_id, key: 'token_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetAccessTokenResponse.method(:from_hash)))
        .execute
    end

    # Updates the metadata a customer
    # @param [String] customer_id Required parameter: The customer id
    # @param [UpdateMetadataRequest] request Required parameter: Request for
    # updating the customer metadata
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetCustomerResponse] response from the API call
    def update_customer_metadata(customer_id,
                                 request,
                                 idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/Customers/{customer_id}/metadata',
                                     Server::DEFAULT)
                   .template_param(new_parameter(customer_id, key: 'customer_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetCustomerResponse.method(:from_hash)))
        .execute
    end

    # Delete a customer's card
    # @param [String] customer_id Required parameter: Customer Id
    # @param [String] card_id Required parameter: Card Id
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetCardResponse] response from the API call
    def delete_card(customer_id,
                    card_id,
                    idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/customers/{customer_id}/cards/{card_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(customer_id, key: 'customer_id')
                                    .should_encode(true))
                   .template_param(new_parameter(card_id, key: 'card_id')
                                    .should_encode(true))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetCardResponse.method(:from_hash)))
        .execute
    end

    # Gets all adressess from a customer
    # @param [String] customer_id Required parameter: Customer id
    # @param [Integer] page Optional parameter: Page number
    # @param [Integer] size Optional parameter: Page size
    # @return [ListAddressesResponse] response from the API call
    def get_addresses(customer_id,
                      page: nil,
                      size: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/customers/{customer_id}/addresses',
                                     Server::DEFAULT)
                   .template_param(new_parameter(customer_id, key: 'customer_id')
                                    .should_encode(true))
                   .query_param(new_parameter(page, key: 'page'))
                   .query_param(new_parameter(size, key: 'size'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ListAddressesResponse.method(:from_hash)))
        .execute
    end

    # Get a customer
    # @param [String] customer_id Required parameter: Customer Id
    # @return [GetCustomerResponse] response from the API call
    def get_customer(customer_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/customers/{customer_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(customer_id, key: 'customer_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetCustomerResponse.method(:from_hash)))
        .execute
    end

    # Get a customer's card
    # @param [String] customer_id Required parameter: Customer id
    # @param [String] card_id Required parameter: Card id
    # @return [GetCardResponse] response from the API call
    def get_card(customer_id,
                 card_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/customers/{customer_id}/cards/{card_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(customer_id, key: 'customer_id')
                                    .should_encode(true))
                   .template_param(new_parameter(card_id, key: 'card_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetCardResponse.method(:from_hash)))
        .execute
    end
  end
end
