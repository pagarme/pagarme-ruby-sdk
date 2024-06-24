# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Generic response object for getting a BalanceOperation.
  class GetBalanceOperationResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :balance_amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :balance_old_amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :fee

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [GetMovementObjectBaseResponse]
    attr_accessor :movement_object

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['status'] = 'status'
      @_hash['balance_amount'] = 'balance_amount'
      @_hash['balance_old_amount'] = 'balance_old_amount'
      @_hash['type'] = 'type'
      @_hash['amount'] = 'amount'
      @_hash['fee'] = 'fee'
      @_hash['created_at'] = 'created_at'
      @_hash['movement_object'] = 'movement_object'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        status
        balance_amount
        balance_old_amount
        type
        amount
        fee
        created_at
        movement_object
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        id
        status
        balance_amount
        balance_old_amount
        type
        amount
        fee
        created_at
      ]
    end

    def initialize(id = SKIP, status = SKIP, balance_amount = SKIP,
                   balance_old_amount = SKIP, type = SKIP, amount = SKIP,
                   fee = SKIP, created_at = SKIP, movement_object = SKIP)
      @id = id unless id == SKIP
      @status = status unless status == SKIP
      @balance_amount = balance_amount unless balance_amount == SKIP
      @balance_old_amount = balance_old_amount unless balance_old_amount == SKIP
      @type = type unless type == SKIP
      @amount = amount unless amount == SKIP
      @fee = fee unless fee == SKIP
      @created_at = created_at unless created_at == SKIP
      @movement_object = movement_object unless movement_object == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      balance_amount =
        hash.key?('balance_amount') ? hash['balance_amount'] : SKIP
      balance_old_amount =
        hash.key?('balance_old_amount') ? hash['balance_old_amount'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      fee = hash.key?('fee') ? hash['fee'] : SKIP
      created_at = hash.key?('created_at') ? hash['created_at'] : SKIP
      movement_object = GetMovementObjectBaseResponse.from_hash(hash['movement_object']) if
        hash['movement_object']

      # Create object from extracted values.
      GetBalanceOperationResponse.new(id,
                                      status,
                                      balance_amount,
                                      balance_old_amount,
                                      type,
                                      amount,
                                      fee,
                                      created_at,
                                      movement_object)
    end
  end
end
