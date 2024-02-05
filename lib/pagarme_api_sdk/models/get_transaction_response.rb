# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module PagarmeApiSdk
  # Generic response object for getting a transaction.
  class GetTransactionResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Gateway transaction id
    # @return [String]
    attr_accessor :gateway_id

    # Amount in cents
    # @return [Integer]
    attr_accessor :amount

    # Transaction status
    # @return [String]
    attr_accessor :status

    # Indicates if the transaction ocurred successfuly
    # @return [TrueClass | FalseClass]
    attr_accessor :success

    # Creation date
    # @return [DateTime]
    attr_accessor :created_at

    # Last update date
    # @return [DateTime]
    attr_accessor :updated_at

    # Number of attempts tried
    # @return [Integer]
    attr_accessor :attempt_count

    # Max attempts
    # @return [Integer]
    attr_accessor :max_attempts

    # Splits
    # @return [Array[GetSplitResponse]]
    attr_accessor :splits

    # Date and time of the next attempt
    # @return [DateTime]
    attr_accessor :next_attempt

    # Date and time of the next attempt
    # @return [String]
    attr_accessor :transaction_type

    # Código da transação
    # @return [String]
    attr_accessor :id

    # The Gateway Response
    # @return [GetGatewayResponseResponse]
    attr_accessor :gateway_response

    # The Gateway Response
    # @return [GetAntifraudResponse]
    attr_accessor :antifraud_response

    # The Gateway Response
    # @return [Hash[String, String]]
    attr_accessor :metadata

    # The Gateway Response
    # @return [Array[GetSplitResponse]]
    attr_accessor :split

    # The Gateway Response
    # @return [GetInterestResponse]
    attr_accessor :interest

    # The Gateway Response
    # @return [GetFineResponse]
    attr_accessor :fine

    # The Gateway Response
    # @return [Integer]
    attr_accessor :max_days_to_pay_past_due

    # Discriminators mapping.
    def self.discriminators
      if @_discriminators.nil?
        @_discriminators = {}
        @_discriminators['voucher'] = GetVoucherTransactionResponse
        @_discriminators['bank_transfer'] = GetBankTransferTransactionResponse
        @_discriminators['safetypay'] = GetSafetyPayTransactionResponse
        @_discriminators['debit_card'] = GetDebitCardTransactionResponse
        @_discriminators['boleto'] = GetBoletoTransactionResponse
        @_discriminators['cash'] = GetCashTransactionResponse
        @_discriminators['private_label'] = GetPrivateLabelTransactionResponse
        @_discriminators['pix'] = GetPixTransactionResponse
        @_discriminators['credit_card'] = GetCreditCardTransactionResponse
      end
      @_discriminators
    end

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['gateway_id'] = 'gateway_id'
      @_hash['amount'] = 'amount'
      @_hash['status'] = 'status'
      @_hash['success'] = 'success'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['attempt_count'] = 'attempt_count'
      @_hash['max_attempts'] = 'max_attempts'
      @_hash['splits'] = 'splits'
      @_hash['next_attempt'] = 'next_attempt'
      @_hash['transaction_type'] = 'transaction_type'
      @_hash['id'] = 'id'
      @_hash['gateway_response'] = 'gateway_response'
      @_hash['antifraud_response'] = 'antifraud_response'
      @_hash['metadata'] = 'metadata'
      @_hash['split'] = 'split'
      @_hash['interest'] = 'interest'
      @_hash['fine'] = 'fine'
      @_hash['max_days_to_pay_past_due'] = 'max_days_to_pay_past_due'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        gateway_id
        amount
        status
        success
        created_at
        updated_at
        attempt_count
        max_attempts
        splits
        next_attempt
        transaction_type
        id
        gateway_response
        antifraud_response
        metadata
        split
        interest
        fine
        max_days_to_pay_past_due
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        gateway_id
        amount
        status
        success
        created_at
        updated_at
        attempt_count
        max_attempts
        splits
        next_attempt
        id
        gateway_response
        antifraud_response
        metadata
        split
        interest
        fine
        max_days_to_pay_past_due
      ]
    end

    def initialize(gateway_id = SKIP,
                   amount = SKIP,
                   status = SKIP,
                   success = SKIP,
                   created_at = SKIP,
                   updated_at = SKIP,
                   attempt_count = SKIP,
                   max_attempts = SKIP,
                   splits = SKIP,
                   next_attempt = SKIP,
                   transaction_type = 'transaction',
                   id = SKIP,
                   gateway_response = SKIP,
                   antifraud_response = SKIP,
                   metadata = SKIP,
                   split = SKIP,
                   interest = SKIP,
                   fine = SKIP,
                   max_days_to_pay_past_due = SKIP)
      @gateway_id = gateway_id unless gateway_id == SKIP
      @amount = amount unless amount == SKIP
      @status = status unless status == SKIP
      @success = success unless success == SKIP
      @created_at = created_at unless created_at == SKIP
      @updated_at = updated_at unless updated_at == SKIP
      @attempt_count = attempt_count unless attempt_count == SKIP
      @max_attempts = max_attempts unless max_attempts == SKIP
      @splits = splits unless splits == SKIP
      @next_attempt = next_attempt unless next_attempt == SKIP
      @transaction_type = transaction_type unless transaction_type == SKIP
      @id = id unless id == SKIP
      @gateway_response = gateway_response unless gateway_response == SKIP
      @antifraud_response = antifraud_response unless antifraud_response == SKIP
      @metadata = metadata unless metadata == SKIP
      @split = split unless split == SKIP
      @interest = interest unless interest == SKIP
      @fine = fine unless fine == SKIP
      @max_days_to_pay_past_due = max_days_to_pay_past_due unless max_days_to_pay_past_due == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Delegate unboxing to another function if a discriminator
      # value for a child class is present.
      unboxer = discriminators[hash['transaction_type']]
      return unboxer.send(:from_hash, hash) if unboxer

      # Extract variables from the hash.
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
      transaction_type = hash['transaction_type'] ||= 'transaction'
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
      GetTransactionResponse.new(gateway_id,
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

    def to_custom_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    def to_custom_updated_at
      DateTimeHelper.to_rfc3339(updated_at)
    end

    def to_custom_next_attempt
      DateTimeHelper.to_rfc3339(next_attempt)
    end
  end
end
