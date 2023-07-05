# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Generic response object for getting a MovementObjectBase.
  class GetMovementObjectBaseResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :object

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :charge_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :gateway_id

    # Discriminators mapping.
    def self.discriminators
      if @_discriminators.nil?
        @_discriminators = {}
        @_discriminators['refund'] = GetMovementObjectRefundResponse
        @_discriminators['feeCollection'] = GetMovementObjectFeeCollectionResponse
        @_discriminators['payable'] = GetMovementObjectPayableResponse
        @_discriminators['transfer'] = GetMovementObjectTransferResponse
      end
      @_discriminators
    end

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['object'] = 'object'
      @_hash['id'] = 'id'
      @_hash['status'] = 'status'
      @_hash['amount'] = 'amount'
      @_hash['created_at'] = 'created_at'
      @_hash['type'] = 'type'
      @_hash['charge_id'] = 'charge_id'
      @_hash['gateway_id'] = 'gateway_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        object
        id
        status
        amount
        created_at
        type
        charge_id
        gateway_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        id
        status
        amount
        created_at
        type
        charge_id
        gateway_id
      ]
    end

    def initialize(object = 'MovementObject',
                   id = SKIP,
                   status = SKIP,
                   amount = SKIP,
                   created_at = SKIP,
                   type = SKIP,
                   charge_id = SKIP,
                   gateway_id = SKIP)
      @object = object unless object == SKIP
      @id = id unless id == SKIP
      @status = status unless status == SKIP
      @amount = amount unless amount == SKIP
      @created_at = created_at unless created_at == SKIP
      @type = type unless type == SKIP
      @charge_id = charge_id unless charge_id == SKIP
      @gateway_id = gateway_id unless gateway_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Delegate unboxing to another function if a discriminator
      # value for a child class is present.
      unboxer = discriminators[hash['object']]
      return unboxer.send(:from_hash, hash) if unboxer

      # Extract variables from the hash.
      object = hash['object'] ||= 'MovementObject'
      id = hash.key?('id') ? hash['id'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      created_at = hash.key?('created_at') ? hash['created_at'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      charge_id = hash.key?('charge_id') ? hash['charge_id'] : SKIP
      gateway_id = hash.key?('gateway_id') ? hash['gateway_id'] : SKIP

      # Create object from extracted values.
      GetMovementObjectBaseResponse.new(object,
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