# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Request for creating an order
  class CreateOrderRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Items
    # @return [Array[CreateOrderItemRequest]]
    attr_accessor :items

    # Customer
    # @return [CreateCustomerRequest]
    attr_accessor :customer

    # Payment data
    # @return [Array[CreatePaymentRequest]]
    attr_accessor :payments

    # The order code
    # @return [String]
    attr_accessor :code

    # The customer id
    # @return [String]
    attr_accessor :customer_id

    # Shipping data
    # @return [CreateShippingRequest]
    attr_accessor :shipping

    # Metadata
    # @return [Hash[String, String]]
    attr_accessor :metadata

    # Defines whether the order will go through anti-fraud
    # @return [TrueClass | FalseClass]
    attr_accessor :antifraud_enabled

    # Ip address
    # @return [String]
    attr_accessor :ip

    # Session id
    # @return [String]
    attr_accessor :session_id

    # Request's location
    # @return [CreateLocationRequest]
    attr_accessor :location

    # Device's informations
    # @return [CreateDeviceRequest]
    attr_accessor :device

    # Device's informations
    # @return [TrueClass | FalseClass]
    attr_accessor :closed

    # Currency
    # @return [String]
    attr_accessor :currency

    # Currency
    # @return [CreateAntifraudRequest]
    attr_accessor :antifraud

    # SubMerchant
    # @return [CreateSubMerchantRequest]
    attr_accessor :submerchant

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['items'] = 'items'
      @_hash['customer'] = 'customer'
      @_hash['payments'] = 'payments'
      @_hash['code'] = 'code'
      @_hash['customer_id'] = 'customer_id'
      @_hash['shipping'] = 'shipping'
      @_hash['metadata'] = 'metadata'
      @_hash['antifraud_enabled'] = 'antifraud_enabled'
      @_hash['ip'] = 'ip'
      @_hash['session_id'] = 'session_id'
      @_hash['location'] = 'location'
      @_hash['device'] = 'device'
      @_hash['closed'] = 'closed'
      @_hash['currency'] = 'currency'
      @_hash['antifraud'] = 'antifraud'
      @_hash['submerchant'] = 'submerchant'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        customer_id
        shipping
        metadata
        antifraud_enabled
        ip
        session_id
        location
        device
        currency
        antifraud
        submerchant
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        customer_id
        metadata
      ]
    end

    def initialize(items = nil,
                   customer = nil,
                   payments = nil,
                   code = nil,
                   closed = true,
                   customer_id = SKIP,
                   shipping = SKIP,
                   metadata = SKIP,
                   antifraud_enabled = SKIP,
                   ip = SKIP,
                   session_id = SKIP,
                   location = SKIP,
                   device = SKIP,
                   currency = SKIP,
                   antifraud = SKIP,
                   submerchant = SKIP)
      @items = items
      @customer = customer
      @payments = payments
      @code = code
      @customer_id = customer_id unless customer_id == SKIP
      @shipping = shipping unless shipping == SKIP
      @metadata = metadata unless metadata == SKIP
      @antifraud_enabled = antifraud_enabled unless antifraud_enabled == SKIP
      @ip = ip unless ip == SKIP
      @session_id = session_id unless session_id == SKIP
      @location = location unless location == SKIP
      @device = device unless device == SKIP
      @closed = closed
      @currency = currency unless currency == SKIP
      @antifraud = antifraud unless antifraud == SKIP
      @submerchant = submerchant unless submerchant == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      items = nil
      unless hash['items'].nil?
        items = []
        hash['items'].each do |structure|
          items << (CreateOrderItemRequest.from_hash(structure) if structure)
        end
      end

      items = nil unless hash.key?('items')
      customer = CreateCustomerRequest.from_hash(hash['customer']) if hash['customer']
      # Parameter is an array, so we need to iterate through it
      payments = nil
      unless hash['payments'].nil?
        payments = []
        hash['payments'].each do |structure|
          payments << (CreatePaymentRequest.from_hash(structure) if structure)
        end
      end

      payments = nil unless hash.key?('payments')
      code = hash.key?('code') ? hash['code'] : nil
      closed = hash['closed'] ||= true
      customer_id = hash.key?('customer_id') ? hash['customer_id'] : SKIP
      shipping = CreateShippingRequest.from_hash(hash['shipping']) if hash['shipping']
      metadata = hash.key?('metadata') ? hash['metadata'] : SKIP
      antifraud_enabled =
        hash.key?('antifraud_enabled') ? hash['antifraud_enabled'] : SKIP
      ip = hash.key?('ip') ? hash['ip'] : SKIP
      session_id = hash.key?('session_id') ? hash['session_id'] : SKIP
      location = CreateLocationRequest.from_hash(hash['location']) if hash['location']
      device = CreateDeviceRequest.from_hash(hash['device']) if hash['device']
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      antifraud = CreateAntifraudRequest.from_hash(hash['antifraud']) if hash['antifraud']
      submerchant = CreateSubMerchantRequest.from_hash(hash['submerchant']) if hash['submerchant']

      # Create object from extracted values.
      CreateOrderRequest.new(items,
                             customer,
                             payments,
                             code,
                             closed,
                             customer_id,
                             shipping,
                             metadata,
                             antifraud_enabled,
                             ip,
                             session_id,
                             location,
                             device,
                             currency,
                             antifraud,
                             submerchant)
    end
  end
end
