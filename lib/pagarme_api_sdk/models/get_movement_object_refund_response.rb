# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require_relative 'get_movement_object_base_response'

module PagarmeApiSdk
  # Generic response object for getting a MovementObjectRefund.
  class GetMovementObjectRefundResponse < GetMovementObjectBaseResponse
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :fraud_coverage_fee

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :charge_fee_recipient_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :bank_account_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :local_transaction_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :updated_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['fraud_coverage_fee'] = 'fraud_coverage_fee'
      @_hash['charge_fee_recipient_id'] = 'charge_fee_recipient_id'
      @_hash['bank_account_id'] = 'bank_account_id'
      @_hash['local_transaction_id'] = 'local_transaction_id'
      @_hash['updated_at'] = 'updated_at'
      @_hash = super().merge(@_hash)
      @_hash
    end

    # An array for optional fields
    def self.optionals
      _arr = %w[
        fraud_coverage_fee
        charge_fee_recipient_id
        bank_account_id
        local_transaction_id
        updated_at
      ]
      (_arr << super()).flatten!
    end

    # An array for nullable fields
    def self.nullables
      _arr = %w[
        fraud_coverage_fee
        charge_fee_recipient_id
        bank_account_id
        local_transaction_id
        updated_at
      ]
      (_arr << super()).flatten!
    end

    def initialize(fraud_coverage_fee = SKIP, charge_fee_recipient_id = SKIP,
                   bank_account_id = SKIP, local_transaction_id = SKIP,
                   updated_at = SKIP, object = 'refund', id = SKIP,
                   status = SKIP, amount = SKIP, created_at = SKIP, type = SKIP,
                   charge_id = SKIP, gateway_id = SKIP)
      @fraud_coverage_fee = fraud_coverage_fee unless fraud_coverage_fee == SKIP
      @charge_fee_recipient_id = charge_fee_recipient_id unless charge_fee_recipient_id == SKIP
      @bank_account_id = bank_account_id unless bank_account_id == SKIP
      @local_transaction_id = local_transaction_id unless local_transaction_id == SKIP
      @updated_at = updated_at unless updated_at == SKIP

      # Call the constructor of the base class
      super(object,
            id,
            status,
            amount,
            created_at,
            type,
            charge_id,
            gateway_id)
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      fraud_coverage_fee =
        hash.key?('fraud_coverage_fee') ? hash['fraud_coverage_fee'] : SKIP
      charge_fee_recipient_id =
        hash.key?('charge_fee_recipient_id') ? hash['charge_fee_recipient_id'] : SKIP
      bank_account_id =
        hash.key?('bank_account_id') ? hash['bank_account_id'] : SKIP
      local_transaction_id =
        hash.key?('local_transaction_id') ? hash['local_transaction_id'] : SKIP
      updated_at = hash.key?('updated_at') ? hash['updated_at'] : SKIP
      object = hash['object'] ||= 'refund'
      id = hash.key?('id') ? hash['id'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      created_at = hash.key?('created_at') ? hash['created_at'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      charge_id = hash.key?('charge_id') ? hash['charge_id'] : SKIP
      gateway_id = hash.key?('gateway_id') ? hash['gateway_id'] : SKIP

      # Create object from extracted values.
      GetMovementObjectRefundResponse.new(fraud_coverage_fee,
                                          charge_fee_recipient_id,
                                          bank_account_id,
                                          local_transaction_id,
                                          updated_at,
                                          object,
                                          id,
                                          status,
                                          amount,
                                          created_at,
                                          type,
                                          charge_id,
                                          gateway_id)
    end
  end
end
