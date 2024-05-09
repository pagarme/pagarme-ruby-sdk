# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # RecipientsController
  class RecipientsController < BaseController
    # Updates a recipient
    # @param [String] recipient_id Required parameter: Recipient id
    # @param [UpdateRecipientRequest] request Required parameter: Recipient
    # data
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetRecipientResponse] response from the API call
    def update_recipient(recipient_id,
                         request,
                         idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/recipients/{recipient_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(recipient_id, key: 'recipient_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetRecipientResponse.method(:from_hash)))
        .execute
    end

    # Creates an anticipation
    # @param [String] recipient_id Required parameter: Recipient id
    # @param [CreateAnticipationRequest] request Required parameter:
    # Anticipation data
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetAnticipationResponse] response from the API call
    def create_anticipation(recipient_id,
                            request,
                            idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/recipients/{recipient_id}/anticipations',
                                     Server::DEFAULT)
                   .template_param(new_parameter(recipient_id, key: 'recipient_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetAnticipationResponse.method(:from_hash)))
        .execute
    end

    # Gets the anticipation limits for a recipient
    # @param [String] recipient_id Required parameter: Recipient id
    # @param [String] timeframe Required parameter: Timeframe
    # @param [DateTime] payment_date Required parameter: Anticipation payment
    # date
    # @return [GetAnticipationLimitResponse] response from the API call
    def get_anticipation_limits(recipient_id,
                                timeframe,
                                payment_date)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/recipients/{recipient_id}/anticipation_limits',
                                     Server::DEFAULT)
                   .template_param(new_parameter(recipient_id, key: 'recipient_id')
                                    .should_encode(true))
                   .query_param(new_parameter(timeframe, key: 'timeframe'))
                   .query_param(new_parameter(payment_date, key: 'payment_date'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetAnticipationLimitResponse.method(:from_hash)))
        .execute
    end

    # Retrieves paginated recipients information
    # @param [Integer] page Optional parameter: Page number
    # @param [Integer] size Optional parameter: Page size
    # @return [ListRecipientResponse] response from the API call
    def get_recipients(page: nil,
                       size: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/recipients',
                                     Server::DEFAULT)
                   .query_param(new_parameter(page, key: 'page'))
                   .query_param(new_parameter(size, key: 'size'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ListRecipientResponse.method(:from_hash)))
        .execute
    end

    # TODO: type endpoint description here
    # @param [String] recipient_id Required parameter: Example:
    # @param [String] withdrawal_id Required parameter: Example:
    # @return [GetWithdrawResponse] response from the API call
    def get_withdraw_by_id(recipient_id,
                           withdrawal_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/recipients/{recipient_id}/withdrawals/{withdrawal_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(recipient_id, key: 'recipient_id')
                                    .should_encode(true))
                   .template_param(new_parameter(withdrawal_id, key: 'withdrawal_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetWithdrawResponse.method(:from_hash)))
        .execute
    end

    # Updates the default bank account from a recipient
    # @param [String] recipient_id Required parameter: Recipient id
    # @param [UpdateRecipientBankAccountRequest] request Required parameter:
    # Bank account data
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetRecipientResponse] response from the API call
    def update_recipient_default_bank_account(recipient_id,
                                              request,
                                              idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/recipients/{recipient_id}/default-bank-account',
                                     Server::DEFAULT)
                   .template_param(new_parameter(recipient_id, key: 'recipient_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetRecipientResponse.method(:from_hash)))
        .execute
    end

    # Updates recipient metadata
    # @param [String] recipient_id Required parameter: Recipient id
    # @param [UpdateMetadataRequest] request Required parameter: Metadata
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetRecipientResponse] response from the API call
    def update_recipient_metadata(recipient_id,
                                  request,
                                  idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/recipients/{recipient_id}/metadata',
                                     Server::DEFAULT)
                   .template_param(new_parameter(recipient_id, key: 'recipient_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetRecipientResponse.method(:from_hash)))
        .execute
    end

    # Gets a paginated list of transfers for the recipient
    # @param [String] recipient_id Required parameter: Recipient id
    # @param [Integer] page Optional parameter: Page number
    # @param [Integer] size Optional parameter: Page size
    # @param [String] status Optional parameter: Filter for transfer status
    # @param [DateTime] created_since Optional parameter: Filter for start range
    # of transfer creation date
    # @param [DateTime] created_until Optional parameter: Filter for end range
    # of transfer creation date
    # @return [ListTransferResponse] response from the API call
    def get_transfers(recipient_id,
                      page: nil,
                      size: nil,
                      status: nil,
                      created_since: nil,
                      created_until: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/recipients/{recipient_id}/transfers',
                                     Server::DEFAULT)
                   .template_param(new_parameter(recipient_id, key: 'recipient_id')
                                    .should_encode(true))
                   .query_param(new_parameter(page, key: 'page'))
                   .query_param(new_parameter(size, key: 'size'))
                   .query_param(new_parameter(status, key: 'status'))
                   .query_param(new_parameter(created_since, key: 'created_since'))
                   .query_param(new_parameter(created_until, key: 'created_until'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ListTransferResponse.method(:from_hash)))
        .execute
    end

    # Gets a transfer
    # @param [String] recipient_id Required parameter: Recipient id
    # @param [String] transfer_id Required parameter: Transfer id
    # @return [GetTransferResponse] response from the API call
    def get_transfer(recipient_id,
                     transfer_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/recipients/{recipient_id}/transfers/{transfer_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(recipient_id, key: 'recipient_id')
                                    .should_encode(true))
                   .template_param(new_parameter(transfer_id, key: 'transfer_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetTransferResponse.method(:from_hash)))
        .execute
    end

    # TODO: type endpoint description here
    # @param [String] recipient_id Required parameter: Example:
    # @param [CreateWithdrawRequest] request Required parameter: Example:
    # @return [GetWithdrawResponse] response from the API call
    def create_withdraw(recipient_id,
                        request)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/recipients/{recipient_id}/withdrawals',
                                     Server::DEFAULT)
                   .template_param(new_parameter(recipient_id, key: 'recipient_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetWithdrawResponse.method(:from_hash)))
        .execute
    end

    # Updates recipient metadata
    # @param [String] recipient_id Required parameter: Recipient id
    # @param [UpdateAutomaticAnticipationSettingsRequest] request Required
    # parameter: Metadata
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetRecipientResponse] response from the API call
    def update_automatic_anticipation_settings(recipient_id,
                                               request,
                                               idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/recipients/{recipient_id}/automatic-anticipation-settings',
                                     Server::DEFAULT)
                   .template_param(new_parameter(recipient_id, key: 'recipient_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetRecipientResponse.method(:from_hash)))
        .execute
    end

    # Gets an anticipation
    # @param [String] recipient_id Required parameter: Recipient id
    # @param [String] anticipation_id Required parameter: Anticipation id
    # @return [GetAnticipationResponse] response from the API call
    def get_anticipation(recipient_id,
                         anticipation_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/recipients/{recipient_id}/anticipations/{anticipation_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(recipient_id, key: 'recipient_id')
                                    .should_encode(true))
                   .template_param(new_parameter(anticipation_id, key: 'anticipation_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetAnticipationResponse.method(:from_hash)))
        .execute
    end

    # TODO: type endpoint description here
    # @param [String] recipient_id Required parameter: Recipient Identificator
    # @param [UpdateTransferSettingsRequest] request Required parameter:
    # Example:
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetRecipientResponse] response from the API call
    def update_recipient_transfer_settings(recipient_id,
                                           request,
                                           idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/recipients/{recipient_id}/transfer-settings',
                                     Server::DEFAULT)
                   .template_param(new_parameter(recipient_id, key: 'recipient_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetRecipientResponse.method(:from_hash)))
        .execute
    end

    # Retrieves a paginated list of anticipations from a recipient
    # @param [String] recipient_id Required parameter: Recipient id
    # @param [Integer] page Optional parameter: Page number
    # @param [Integer] size Optional parameter: Page size
    # @param [String] status Optional parameter: Filter for anticipation
    # status
    # @param [String] timeframe Optional parameter: Filter for anticipation
    # timeframe
    # @param [DateTime] payment_date_since Optional parameter: Filter for start
    # range for anticipation payment date
    # @param [DateTime] payment_date_until Optional parameter: Filter for end
    # range for anticipation payment date
    # @param [DateTime] created_since Optional parameter: Filter for start range
    # for anticipation creation date
    # @param [DateTime] created_until Optional parameter: Filter for end range
    # for anticipation creation date
    # @return [ListAnticipationResponse] response from the API call
    def get_anticipations(recipient_id,
                          page: nil,
                          size: nil,
                          status: nil,
                          timeframe: nil,
                          payment_date_since: nil,
                          payment_date_until: nil,
                          created_since: nil,
                          created_until: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/recipients/{recipient_id}/anticipations',
                                     Server::DEFAULT)
                   .template_param(new_parameter(recipient_id, key: 'recipient_id')
                                    .should_encode(true))
                   .query_param(new_parameter(page, key: 'page'))
                   .query_param(new_parameter(size, key: 'size'))
                   .query_param(new_parameter(status, key: 'status'))
                   .query_param(new_parameter(timeframe, key: 'timeframe'))
                   .query_param(new_parameter(payment_date_since, key: 'payment_date_since'))
                   .query_param(new_parameter(payment_date_until, key: 'payment_date_until'))
                   .query_param(new_parameter(created_since, key: 'created_since'))
                   .query_param(new_parameter(created_until, key: 'created_until'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ListAnticipationResponse.method(:from_hash)))
        .execute
    end

    # Retrieves recipient information
    # @param [String] recipient_id Required parameter: Recipiend id
    # @return [GetRecipientResponse] response from the API call
    def get_recipient(recipient_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/recipients/{recipient_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(recipient_id, key: 'recipient_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetRecipientResponse.method(:from_hash)))
        .execute
    end

    # Get balance information for a recipient
    # @param [String] recipient_id Required parameter: Recipient id
    # @return [GetBalanceResponse] response from the API call
    def get_balance(recipient_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/recipients/{recipient_id}/balance',
                                     Server::DEFAULT)
                   .template_param(new_parameter(recipient_id, key: 'recipient_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetBalanceResponse.method(:from_hash)))
        .execute
    end

    # Gets a paginated list of transfers for the recipient
    # @param [String] recipient_id Required parameter: Example:
    # @param [Integer] page Optional parameter: Example:
    # @param [Integer] size Optional parameter: Example:
    # @param [String] status Optional parameter: Example:
    # @param [DateTime] created_since Optional parameter: Example:
    # @param [DateTime] created_until Optional parameter: Example:
    # @return [ListWithdrawals] response from the API call
    def get_withdrawals(recipient_id,
                        page: nil,
                        size: nil,
                        status: nil,
                        created_since: nil,
                        created_until: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/recipients/{recipient_id}/withdrawals',
                                     Server::DEFAULT)
                   .template_param(new_parameter(recipient_id, key: 'recipient_id')
                                    .should_encode(true))
                   .query_param(new_parameter(page, key: 'page'))
                   .query_param(new_parameter(size, key: 'size'))
                   .query_param(new_parameter(status, key: 'status'))
                   .query_param(new_parameter(created_since, key: 'created_since'))
                   .query_param(new_parameter(created_until, key: 'created_until'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ListWithdrawals.method(:from_hash)))
        .execute
    end

    # Creates a transfer for a recipient
    # @param [String] recipient_id Required parameter: Recipient Id
    # @param [CreateTransferRequest] request Required parameter: Transfer data
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetTransferResponse] response from the API call
    def create_transfer(recipient_id,
                        request,
                        idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/recipients/{recipient_id}/transfers',
                                     Server::DEFAULT)
                   .template_param(new_parameter(recipient_id, key: 'recipient_id')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetTransferResponse.method(:from_hash)))
        .execute
    end

    # Creates a new recipient
    # @param [CreateRecipientRequest] request Required parameter: Recipient
    # data
    # @param [String] idempotency_key Optional parameter: Example:
    # @return [GetRecipientResponse] response from the API call
    def create_recipient(request,
                         idempotency_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/recipients',
                                     Server::DEFAULT)
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(idempotency_key, key: 'idempotency-key'))
                   .header_param(new_parameter('application/json; charset=utf-8', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetRecipientResponse.method(:from_hash)))
        .execute
    end

    # Retrieves recipient information
    # @param [String] code Required parameter: Recipient code
    # @return [GetRecipientResponse] response from the API call
    def get_recipient_by_code(code)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/recipients/{code}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(code, key: 'code')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetRecipientResponse.method(:from_hash)))
        .execute
    end

    # TODO: type endpoint description here
    # @return [GetRecipientResponse] response from the API call
    def get_default_recipient
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/recipients/default',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetRecipientResponse.method(:from_hash)))
        .execute
    end

    # Create a KYC link
    # @param [String] recipient_id Required parameter: Example:
    # @return [CreateKYCLinkResponse] response from the API call
    def create_kyc_link(recipient_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/recipients/{recipient_id}/kyc_link',
                                     Server::DEFAULT)
                   .template_param(new_parameter(recipient_id, key: 'recipient_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('httpBasic')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(CreateKYCLinkResponse.method(:from_hash)))
        .execute
    end
  end
end
