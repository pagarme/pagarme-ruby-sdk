# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
require_relative 'get_transaction_response'

module PagarmeApiSdk
  # Response object for getting a bank transfer transaction
  class GetBankTransferTransactionResponse < GetTransactionResponse
    # Payment url
    # @return [String]
    attr_accessor :url

    # Transaction identifier for the bank
    # @return [String]
    attr_accessor :bank_tid

    # Bank
    # @return [String]
    attr_accessor :bank

    # Payment date
    # @return [DateTime]
    attr_accessor :paid_at

    # Paid amount
    # @return [Integer]
    attr_accessor :paid_amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['url'] = 'url'
      @_hash['bank_tid'] = 'bank_tid'
      @_hash['bank'] = 'bank'
      @_hash['paid_at'] = 'paid_at'
      @_hash['paid_amount'] = 'paid_amount'
      @_hash = super().merge(@_hash)
      @_hash
    end

    # An array for optional fields
    def self.optionals
      _arr = %w[
        url
        bank_tid
        bank
        paid_at
        paid_amount
      ]
      (_arr << super()).flatten!
    end

    # An array for nullable fields
    def self.nullables
      _arr = []
      (_arr << super()).flatten!
    end

    def initialize(url = SKIP,
                   bank_tid = SKIP,
                   bank = SKIP,
                   paid_at = SKIP,
                   paid_amount = SKIP,
                   gateway_id = SKIP,
                   amount = SKIP,
                   status = SKIP,
                   success = SKIP,
                   created_at = SKIP,
                   updated_at = SKIP,
                   attempt_count = SKIP,
                   max_attempts = SKIP,
                   splits = SKIP,
                   next_attempt = SKIP,
                   transaction_type = 'bank_transfer',
                   id = SKIP,
                   gateway_response = SKIP,
                   antifraud_response = SKIP,
                   metadata = SKIP,
                   split = SKIP,
                   interest = SKIP,
                   fine = SKIP,
                   max_days_to_pay_past_due = SKIP)
      @url = url unless url == SKIP
      @bank_tid = bank_tid unless bank_tid == SKIP
      @bank = bank unless bank == SKIP
      @paid_at = paid_at unless paid_at == SKIP
      @paid_amount = paid_amount unless paid_amount == SKIP

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
      url = hash.key?('url') ? hash['url'] : SKIP
      bank_tid = hash.key?('bank_tid') ? hash['bank_tid'] : SKIP
      bank = hash.key?('bank') ? hash['bank'] : SKIP
      paid_at = if hash.key?('paid_at')
                  (DateTimeHelper.from_rfc3339(hash['paid_at']) if hash['paid_at'])
                else
                  SKIP
                end
      paid_amount = hash.key?('paid_amount') ? hash['paid_amount'] : SKIP
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
      transaction_type = hash['transaction_type'] ||= 'bank_transfer'
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
      GetBankTransferTransactionResponse.new(url,
                                             bank_tid,
                                             bank,
                                             paid_at,
                                             paid_amount,
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

    def to_paid_at
      DateTimeHelper.to_rfc3339(paid_at)
    end
  end
end
