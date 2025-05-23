# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
require_relative 'get_transaction_response'

module PagarmeApiSdk
  # Response for voucher transactions
  class GetVoucherTransactionResponse < GetTransactionResponse
    # Text that will appear on the voucher's statement
    # @return [String]
    attr_accessor :statement_descriptor

    # Acquirer name
    # @return [String]
    attr_accessor :acquirer_name

    # Acquirer affiliation code
    # @return [String]
    attr_accessor :acquirer_affiliation_code

    # Acquirer TID
    # @return [String]
    attr_accessor :acquirer_tid

    # Acquirer NSU
    # @return [String]
    attr_accessor :acquirer_nsu

    # Acquirer authorization code
    # @return [String]
    attr_accessor :acquirer_auth_code

    # acquirer_message
    # @return [String]
    attr_accessor :acquirer_message

    # Acquirer return code
    # @return [String]
    attr_accessor :acquirer_return_code

    # Operation type
    # @return [String]
    attr_accessor :operation_type

    # Card data
    # @return [GetCardResponse]
    attr_accessor :card

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['statement_descriptor'] = 'statement_descriptor'
      @_hash['acquirer_name'] = 'acquirer_name'
      @_hash['acquirer_affiliation_code'] = 'acquirer_affiliation_code'
      @_hash['acquirer_tid'] = 'acquirer_tid'
      @_hash['acquirer_nsu'] = 'acquirer_nsu'
      @_hash['acquirer_auth_code'] = 'acquirer_auth_code'
      @_hash['acquirer_message'] = 'acquirer_message'
      @_hash['acquirer_return_code'] = 'acquirer_return_code'
      @_hash['operation_type'] = 'operation_type'
      @_hash['card'] = 'card'
      @_hash = super().merge(@_hash)
      @_hash
    end

    # An array for optional fields
    def self.optionals
      _arr = %w[
        statement_descriptor
        acquirer_name
        acquirer_affiliation_code
        acquirer_tid
        acquirer_nsu
        acquirer_auth_code
        acquirer_message
        acquirer_return_code
        operation_type
        card
      ]
      (_arr << super()).flatten!
    end

    # An array for nullable fields
    def self.nullables
      _arr = %w[
        statement_descriptor
        acquirer_name
        acquirer_affiliation_code
        acquirer_tid
        acquirer_nsu
        acquirer_auth_code
        acquirer_message
        acquirer_return_code
        operation_type
        card
      ]
      (_arr << super()).flatten!
    end

    def initialize(statement_descriptor = SKIP, acquirer_name = SKIP,
                   acquirer_affiliation_code = SKIP, acquirer_tid = SKIP,
                   acquirer_nsu = SKIP, acquirer_auth_code = SKIP,
                   acquirer_message = SKIP, acquirer_return_code = SKIP,
                   operation_type = SKIP, card = SKIP, gateway_id = SKIP,
                   amount = SKIP, status = SKIP, success = SKIP,
                   created_at = SKIP, updated_at = SKIP, attempt_count = SKIP,
                   max_attempts = SKIP, splits = SKIP, next_attempt = SKIP,
                   transaction_type = 'voucher', id = SKIP,
                   gateway_response = SKIP, antifraud_response = SKIP,
                   metadata = SKIP, split = SKIP, interest = SKIP, fine = SKIP,
                   max_days_to_pay_past_due = SKIP)
      @statement_descriptor = statement_descriptor unless statement_descriptor == SKIP
      @acquirer_name = acquirer_name unless acquirer_name == SKIP
      unless acquirer_affiliation_code == SKIP
        @acquirer_affiliation_code =
          acquirer_affiliation_code
      end
      @acquirer_tid = acquirer_tid unless acquirer_tid == SKIP
      @acquirer_nsu = acquirer_nsu unless acquirer_nsu == SKIP
      @acquirer_auth_code = acquirer_auth_code unless acquirer_auth_code == SKIP
      @acquirer_message = acquirer_message unless acquirer_message == SKIP
      @acquirer_return_code = acquirer_return_code unless acquirer_return_code == SKIP
      @operation_type = operation_type unless operation_type == SKIP
      @card = card unless card == SKIP

      # Call the constructor of the base class
      super(gateway_id,
            amount,
            status,
            success,
            created_at,
            updated_at,
            attempt_count,
            max_attempts,
            splits,
            next_attempt,
            transaction_type,
            id,
            gateway_response,
            antifraud_response,
            metadata,
            split,
            interest,
            fine,
            max_days_to_pay_past_due)
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      statement_descriptor =
        hash.key?('statement_descriptor') ? hash['statement_descriptor'] : SKIP
      acquirer_name = hash.key?('acquirer_name') ? hash['acquirer_name'] : SKIP
      acquirer_affiliation_code =
        hash.key?('acquirer_affiliation_code') ? hash['acquirer_affiliation_code'] : SKIP
      acquirer_tid = hash.key?('acquirer_tid') ? hash['acquirer_tid'] : SKIP
      acquirer_nsu = hash.key?('acquirer_nsu') ? hash['acquirer_nsu'] : SKIP
      acquirer_auth_code =
        hash.key?('acquirer_auth_code') ? hash['acquirer_auth_code'] : SKIP
      acquirer_message =
        hash.key?('acquirer_message') ? hash['acquirer_message'] : SKIP
      acquirer_return_code =
        hash.key?('acquirer_return_code') ? hash['acquirer_return_code'] : SKIP
      operation_type =
        hash.key?('operation_type') ? hash['operation_type'] : SKIP
      card = GetCardResponse.from_hash(hash['card']) if hash['card']
      gateway_id = hash.key?('gateway_id') ? hash['gateway_id'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      success = hash.key?('success') ? hash['success'] : SKIP
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   else
                     SKIP
                   end
      updated_at = if hash.key?('updated_at')
                     (DateTimeHelper.from_rfc3339(hash['updated_at']) if hash['updated_at'])
                   else
                     SKIP
                   end
      attempt_count = hash.key?('attempt_count') ? hash['attempt_count'] : SKIP
      max_attempts = hash.key?('max_attempts') ? hash['max_attempts'] : SKIP
      # Parameter is an array, so we need to iterate through it
      splits = nil
      unless hash['splits'].nil?
        splits = []
        hash['splits'].each do |structure|
          splits << (GetSplitResponse.from_hash(structure) if structure)
        end
      end

      splits = SKIP unless hash.key?('splits')
      next_attempt = if hash.key?('next_attempt')
                       (DateTimeHelper.from_rfc3339(hash['next_attempt']) if hash['next_attempt'])
                     else
                       SKIP
                     end
      transaction_type = hash['transaction_type'] ||= 'voucher'
      id = hash.key?('id') ? hash['id'] : SKIP
      gateway_response = GetGatewayResponseResponse.from_hash(hash['gateway_response']) if
        hash['gateway_response']
      antifraud_response = GetAntifraudResponse.from_hash(hash['antifraud_response']) if
        hash['antifraud_response']
      metadata = hash.key?('metadata') ? hash['metadata'] : SKIP
      # Parameter is an array, so we need to iterate through it
      split = nil
      unless hash['split'].nil?
        split = []
        hash['split'].each do |structure|
          split << (GetSplitResponse.from_hash(structure) if structure)
        end
      end

      split = SKIP unless hash.key?('split')
      interest = GetInterestResponse.from_hash(hash['interest']) if hash['interest']
      fine = GetFineResponse.from_hash(hash['fine']) if hash['fine']
      max_days_to_pay_past_due =
        hash.key?('max_days_to_pay_past_due') ? hash['max_days_to_pay_past_due'] : SKIP

      # Create object from extracted values.
      GetVoucherTransactionResponse.new(statement_descriptor,
                                        acquirer_name,
                                        acquirer_affiliation_code,
                                        acquirer_tid,
                                        acquirer_nsu,
                                        acquirer_auth_code,
                                        acquirer_message,
                                        acquirer_return_code,
                                        operation_type,
                                        card,
                                        gateway_id,
                                        amount,
                                        status,
                                        success,
                                        created_at,
                                        updated_at,
                                        attempt_count,
                                        max_attempts,
                                        splits,
                                        next_attempt,
                                        transaction_type,
                                        id,
                                        gateway_response,
                                        antifraud_response,
                                        metadata,
                                        split,
                                        interest,
                                        fine,
                                        max_days_to_pay_past_due)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      super_string = super().sub(/^<[^ ]+ /, '').sub(/>$/, '')
      "<#{class_name} #{super_string}, statement_descriptor: #{@statement_descriptor},"\
      " acquirer_name: #{@acquirer_name}, acquirer_affiliation_code:"\
      " #{@acquirer_affiliation_code}, acquirer_tid: #{@acquirer_tid}, acquirer_nsu:"\
      " #{@acquirer_nsu}, acquirer_auth_code: #{@acquirer_auth_code}, acquirer_message:"\
      " #{@acquirer_message}, acquirer_return_code: #{@acquirer_return_code}, operation_type:"\
      " #{@operation_type}, card: #{@card}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      super_string = super().inspect.sub(/^<[^ ]+ /, '').sub(/>$/, '')
      "<#{class_name} #{super_string}, statement_descriptor: #{@statement_descriptor.inspect},"\
      " acquirer_name: #{@acquirer_name.inspect}, acquirer_affiliation_code:"\
      " #{@acquirer_affiliation_code.inspect}, acquirer_tid: #{@acquirer_tid.inspect},"\
      " acquirer_nsu: #{@acquirer_nsu.inspect}, acquirer_auth_code:"\
      " #{@acquirer_auth_code.inspect}, acquirer_message: #{@acquirer_message.inspect},"\
      " acquirer_return_code: #{@acquirer_return_code.inspect}, operation_type:"\
      " #{@operation_type.inspect}, card: #{@card.inspect}>"
    end
  end
end
