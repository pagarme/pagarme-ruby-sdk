# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Request for creating an order item
  class CreateOrderItemRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Amount
    # @return [Integer]
    attr_accessor :amount

    # Description
    # @return [String]
    attr_accessor :description

    # Quantity
    # @return [Integer]
    attr_accessor :quantity

    # Category
    # @return [String]
    attr_accessor :category

    # The item code passed by the client
    # @return [String]
    attr_accessor :code

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['description'] = 'description'
      @_hash['quantity'] = 'quantity'
      @_hash['category'] = 'category'
      @_hash['code'] = 'code'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        code
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(amount = nil, description = nil, quantity = nil,
                   category = nil, code = SKIP)
      @amount = amount
      @description = description
      @quantity = quantity
      @category = category
      @code = code unless code == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash.key?('amount') ? hash['amount'] : nil
      description = hash.key?('description') ? hash['description'] : nil
      quantity = hash.key?('quantity') ? hash['quantity'] : nil
      category = hash.key?('category') ? hash['category'] : nil
      code = hash.key?('code') ? hash['code'] : SKIP

      # Create object from extracted values.
      CreateOrderItemRequest.new(amount,
                                 description,
                                 quantity,
                                 category,
                                 code)
    end
  end
end
