# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Response object for getting the setup from a subscription
  class GetSetupResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['description'] = 'description'
      @_hash['amount'] = 'amount'
      @_hash['status'] = 'status'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        description
        amount
        status
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        id
        description
        amount
        status
      ]
    end

    def initialize(id = SKIP,
                   description = SKIP,
                   amount = SKIP,
                   status = SKIP)
      @id = id unless id == SKIP
      @description = description unless description == SKIP
      @amount = amount unless amount == SKIP
      @status = status unless status == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP

      # Create object from extracted values.
      GetSetupResponse.new(id,
                           description,
                           amount,
                           status)
    end
  end
end
