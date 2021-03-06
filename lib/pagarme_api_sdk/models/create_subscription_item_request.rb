# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Request for creating a new subscription item
  class CreateSubscriptionItemRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Item description
    # @return [String]
    attr_accessor :description

    # Pricing scheme
    # @return [CreatePricingSchemeRequest]
    attr_accessor :pricing_scheme

    # Item id
    # @return [String]
    attr_accessor :id

    # Plan item id
    # @return [String]
    attr_accessor :plan_item_id

    # Discounts for the item
    # @return [List of CreateDiscountRequest]
    attr_accessor :discounts

    # Item name
    # @return [String]
    attr_accessor :name

    # Number of cycles which the item will be charged
    # @return [Integer]
    attr_accessor :cycles

    # Quantity of items
    # @return [Integer]
    attr_accessor :quantity

    # Minimum price
    # @return [Integer]
    attr_accessor :minimum_price

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['description'] = 'description'
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['id'] = 'id'
      @_hash['plan_item_id'] = 'plan_item_id'
      @_hash['discounts'] = 'discounts'
      @_hash['name'] = 'name'
      @_hash['cycles'] = 'cycles'
      @_hash['quantity'] = 'quantity'
      @_hash['minimum_price'] = 'minimum_price'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        cycles
        quantity
        minimum_price
      ]
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(description = nil,
                   pricing_scheme = nil,
                   id = nil,
                   plan_item_id = nil,
                   discounts = nil,
                   name = nil,
                   cycles = nil,
                   quantity = nil,
                   minimum_price = nil)
      @description = description unless description == SKIP
      @pricing_scheme = pricing_scheme unless pricing_scheme == SKIP
      @id = id unless id == SKIP
      @plan_item_id = plan_item_id unless plan_item_id == SKIP
      @discounts = discounts unless discounts == SKIP
      @name = name unless name == SKIP
      @cycles = cycles unless cycles == SKIP
      @quantity = quantity unless quantity == SKIP
      @minimum_price = minimum_price unless minimum_price == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      description = hash.key?('description') ? hash['description'] : SKIP
      pricing_scheme = CreatePricingSchemeRequest.from_hash(hash['pricing_scheme']) if
        hash['pricing_scheme']
      id = hash.key?('id') ? hash['id'] : SKIP
      plan_item_id = hash.key?('plan_item_id') ? hash['plan_item_id'] : SKIP
      # Parameter is an array, so we need to iterate through it
      discounts = nil
      unless hash['discounts'].nil?
        discounts = []
        hash['discounts'].each do |structure|
          discounts << (CreateDiscountRequest.from_hash(structure) if structure)
        end
      end

      discounts = SKIP unless hash.key?('discounts')
      name = hash.key?('name') ? hash['name'] : SKIP
      cycles = hash.key?('cycles') ? hash['cycles'] : SKIP
      quantity = hash.key?('quantity') ? hash['quantity'] : SKIP
      minimum_price = hash.key?('minimum_price') ? hash['minimum_price'] : SKIP

      # Create object from extracted values.
      CreateSubscriptionItemRequest.new(description,
                                        pricing_scheme,
                                        id,
                                        plan_item_id,
                                        discounts,
                                        name,
                                        cycles,
                                        quantity,
                                        minimum_price)
    end
  end
end
