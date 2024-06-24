# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require_relative 'get_movement_object_base_response'

module PagarmeApiSdk
  # GetMovementObjectTransferResponse Model.
  class GetMovementObjectTransferResponse < GetMovementObjectBaseResponse
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :source_type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :source_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :target_type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :target_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :fee

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :funding_date

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :funding_estimated_date

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :bank_account

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['source_type'] = 'source_type'
      @_hash['source_id'] = 'source_id'
      @_hash['target_type'] = 'target_type'
      @_hash['target_id'] = 'target_id'
      @_hash['fee'] = 'fee'
      @_hash['funding_date'] = 'funding_date'
      @_hash['funding_estimated_date'] = 'funding_estimated_date'
      @_hash['bank_account'] = 'bank_account'
      @_hash = super().merge(@_hash)
      @_hash
    end

    # An array for optional fields
    def self.optionals
      _arr = %w[
        source_type
        source_id
        target_type
        target_id
        fee
        funding_date
        funding_estimated_date
        bank_account
      ]
      (_arr << super()).flatten!
    end

    # An array for nullable fields
    def self.nullables
      _arr = %w[
        source_type
        source_id
        target_type
        target_id
        fee
        funding_date
        funding_estimated_date
        bank_account
      ]
      (_arr << super()).flatten!
    end

    def initialize(source_type = SKIP, source_id = SKIP, target_type = SKIP,
                   target_id = SKIP, fee = SKIP, funding_date = SKIP,
                   funding_estimated_date = SKIP, bank_account = SKIP,
                   object = 'transfer', id = SKIP, status = SKIP, amount = SKIP,
                   created_at = SKIP, type = SKIP, charge_id = SKIP,
                   gateway_id = SKIP)
      @source_type = source_type unless source_type == SKIP
      @source_id = source_id unless source_id == SKIP
      @target_type = target_type unless target_type == SKIP
      @target_id = target_id unless target_id == SKIP
      @fee = fee unless fee == SKIP
      @funding_date = funding_date unless funding_date == SKIP
      @funding_estimated_date = funding_estimated_date unless funding_estimated_date == SKIP
      @bank_account = bank_account unless bank_account == SKIP

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
      source_type = hash.key?('source_type') ? hash['source_type'] : SKIP
      source_id = hash.key?('source_id') ? hash['source_id'] : SKIP
      target_type = hash.key?('target_type') ? hash['target_type'] : SKIP
      target_id = hash.key?('target_id') ? hash['target_id'] : SKIP
      fee = hash.key?('fee') ? hash['fee'] : SKIP
      funding_date = hash.key?('funding_date') ? hash['funding_date'] : SKIP
      funding_estimated_date =
        hash.key?('funding_estimated_date') ? hash['funding_estimated_date'] : SKIP
      bank_account = hash.key?('bank_account') ? hash['bank_account'] : SKIP
      object = hash['object'] ||= 'transfer'
      id = hash.key?('id') ? hash['id'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      created_at = hash.key?('created_at') ? hash['created_at'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      charge_id = hash.key?('charge_id') ? hash['charge_id'] : SKIP
      gateway_id = hash.key?('gateway_id') ? hash['gateway_id'] : SKIP

      # Create object from extracted values.
      GetMovementObjectTransferResponse.new(source_type,
                                            source_id,
                                            target_type,
                                            target_id,
                                            fee,
                                            funding_date,
                                            funding_estimated_date,
                                            bank_account,
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
