# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Request for creating a plan
  class CreatePlanRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Plan's name
    # @return [String]
    attr_accessor :name

    # Description
    # @return [String]
    attr_accessor :description

    # Text that will be printed on the credit card's statement
    # @return [String]
    attr_accessor :statement_descriptor

    # Plan items
    # @return [Array[CreatePlanItemRequest]]
    attr_accessor :items

    # Indicates if the plan is shippable
    # @return [TrueClass | FalseClass]
    attr_accessor :shippable

    # Allowed payment methods for the plan
    # @return [Array[String]]
    attr_accessor :payment_methods

    # Number of installments
    # @return [Array[Integer]]
    attr_accessor :installments

    # Currency
    # @return [String]
    attr_accessor :currency

    # Interval
    # @return [String]
    attr_accessor :interval

    # Interval counts between two charges. For instance, if the interval is
    # 'month' and count is 2, the customer will be charged once every two
    # months.
    # @return [Integer]
    attr_accessor :interval_count

    # Allowed billings days for the subscription, in case the plan type is
    # 'exact_day'
    # @return [Array[Integer]]
    attr_accessor :billing_days

    # Billing type
    # @return [String]
    attr_accessor :billing_type

    # Plan's pricing scheme
    # @return [CreatePricingSchemeRequest]
    attr_accessor :pricing_scheme

    # Metadata
    # @return [Hash[String, String]]
    attr_accessor :metadata

    # Minimum price that will be charged
    # @return [Integer]
    attr_accessor :minimum_price

    # Number of cycles
    # @return [Integer]
    attr_accessor :cycles

    # Quantity
    # @return [Integer]
    attr_accessor :quantity

    # Trial period, where the customer will not be charged.
    # @return [Integer]
    attr_accessor :trial_period_days

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['description'] = 'description'
      @_hash['statement_descriptor'] = 'statement_descriptor'
      @_hash['items'] = 'items'
      @_hash['shippable'] = 'shippable'
      @_hash['payment_methods'] = 'payment_methods'
      @_hash['installments'] = 'installments'
      @_hash['currency'] = 'currency'
      @_hash['interval'] = 'interval'
      @_hash['interval_count'] = 'interval_count'
      @_hash['billing_days'] = 'billing_days'
      @_hash['billing_type'] = 'billing_type'
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['metadata'] = 'metadata'
      @_hash['minimum_price'] = 'minimum_price'
      @_hash['cycles'] = 'cycles'
      @_hash['quantity'] = 'quantity'
      @_hash['trial_period_days'] = 'trial_period_days'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        minimum_price
        cycles
        quantity
        trial_period_days
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name = nil, description = nil, statement_descriptor = nil,
                   items = nil, shippable = nil, payment_methods = nil,
                   installments = nil, currency = nil, interval = nil,
                   interval_count = nil, billing_days = nil, billing_type = nil,
                   pricing_scheme = nil, metadata = nil, minimum_price = SKIP,
                   cycles = SKIP, quantity = SKIP, trial_period_days = SKIP)
      @name = name
      @description = description
      @statement_descriptor = statement_descriptor
      @items = items
      @shippable = shippable
      @payment_methods = payment_methods
      @installments = installments
      @currency = currency
      @interval = interval
      @interval_count = interval_count
      @billing_days = billing_days
      @billing_type = billing_type
      @pricing_scheme = pricing_scheme
      @metadata = metadata
      @minimum_price = minimum_price unless minimum_price == SKIP
      @cycles = cycles unless cycles == SKIP
      @quantity = quantity unless quantity == SKIP
      @trial_period_days = trial_period_days unless trial_period_days == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : nil
      description = hash.key?('description') ? hash['description'] : nil
      statement_descriptor =
        hash.key?('statement_descriptor') ? hash['statement_descriptor'] : nil
      # Parameter is an array, so we need to iterate through it
      items = nil
      unless hash['items'].nil?
        items = []
        hash['items'].each do |structure|
          items << (CreatePlanItemRequest.from_hash(structure) if structure)
        end
      end

      items = nil unless hash.key?('items')
      shippable = hash.key?('shippable') ? hash['shippable'] : nil
      payment_methods =
        hash.key?('payment_methods') ? hash['payment_methods'] : nil
      installments = hash.key?('installments') ? hash['installments'] : nil
      currency = hash.key?('currency') ? hash['currency'] : nil
      interval = hash.key?('interval') ? hash['interval'] : nil
      interval_count =
        hash.key?('interval_count') ? hash['interval_count'] : nil
      billing_days = hash.key?('billing_days') ? hash['billing_days'] : nil
      billing_type = hash.key?('billing_type') ? hash['billing_type'] : nil
      pricing_scheme = CreatePricingSchemeRequest.from_hash(hash['pricing_scheme']) if
        hash['pricing_scheme']
      metadata = hash.key?('metadata') ? hash['metadata'] : nil
      minimum_price = hash.key?('minimum_price') ? hash['minimum_price'] : SKIP
      cycles = hash.key?('cycles') ? hash['cycles'] : SKIP
      quantity = hash.key?('quantity') ? hash['quantity'] : SKIP
      trial_period_days =
        hash.key?('trial_period_days') ? hash['trial_period_days'] : SKIP

      # Create object from extracted values.
      CreatePlanRequest.new(name,
                            description,
                            statement_descriptor,
                            items,
                            shippable,
                            payment_methods,
                            installments,
                            currency,
                            interval,
                            interval_count,
                            billing_days,
                            billing_type,
                            pricing_scheme,
                            metadata,
                            minimum_price,
                            cycles,
                            quantity,
                            trial_period_days)
    end
  end
end
