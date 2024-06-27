# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Request for creating a plan item
  class CreatePlanItemRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Item name
    # @return [String]
    attr_accessor :name

    # Item's pricing scheme
    # @return [CreatePricingSchemeRequest]
    attr_accessor :pricing_scheme

    # Item's id
    # @return [String]
    attr_accessor :id

    # Item's description
    # @return [String]
    attr_accessor :description

    # Number of cycles where the item will be charged
    # @return [Integer]
    attr_accessor :cycles

    # Quantity
    # @return [Integer]
    attr_accessor :quantity

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['id'] = 'id'
      @_hash['description'] = 'description'
      @_hash['cycles'] = 'cycles'
      @_hash['quantity'] = 'quantity'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        cycles
        quantity
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name = nil, pricing_scheme = nil, id = nil,
                   description = nil, cycles = SKIP, quantity = SKIP)
      @name = name
      @pricing_scheme = pricing_scheme
      @id = id
      @description = description
      @cycles = cycles unless cycles == SKIP
      @quantity = quantity unless quantity == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : nil
      pricing_scheme = CreatePricingSchemeRequest.from_hash(hash['pricing_scheme']) if
        hash['pricing_scheme']
      id = hash.key?('id') ? hash['id'] : nil
      description = hash.key?('description') ? hash['description'] : nil
      cycles = hash.key?('cycles') ? hash['cycles'] : SKIP
      quantity = hash.key?('quantity') ? hash['quantity'] : SKIP

      # Create object from extracted values.
      CreatePlanItemRequest.new(name,
                                pricing_scheme,
                                id,
                                description,
                                cycles,
                                quantity)
    end
  end
end
