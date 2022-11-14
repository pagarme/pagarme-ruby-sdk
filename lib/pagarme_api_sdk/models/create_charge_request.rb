# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module PagarmeApiSdk
  # Request for creating a new charge
  class CreateChargeRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Code
    # @return [String]
    attr_accessor :code

    # The amount of the charge, in cents
    # @return [Integer]
    attr_accessor :amount

    # The customer's id
    # @return [String]
    attr_accessor :customer_id

    # Customer data
    # @return [CreateCustomerRequest]
    attr_accessor :customer

    # Payment data
    # @return [CreatePaymentRequest]
    attr_accessor :payment

    # Metadata
    # @return [Hash of String]
    attr_accessor :metadata

    # The charge due date
    # @return [DateTime]
    attr_accessor :due_at

    # The charge due date
    # @return [CreateAntifraudRequest]
    attr_accessor :antifraud

    # Order Id
    # @return [String]
    attr_accessor :order_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['code'] = 'code'
      @_hash['amount'] = 'amount'
      @_hash['customer_id'] = 'customer_id'
      @_hash['customer'] = 'customer'
      @_hash['payment'] = 'payment'
      @_hash['metadata'] = 'metadata'
      @_hash['due_at'] = 'due_at'
      @_hash['antifraud'] = 'antifraud'
      @_hash['order_id'] = 'order_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        due_at
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(code = nil,
                   amount = nil,
                   customer_id = nil,
                   customer = nil,
                   payment = nil,
                   metadata = nil,
                   antifraud = nil,
                   order_id = nil,
                   due_at = SKIP)
      @code = code
      @amount = amount
      @customer_id = customer_id
      @customer = customer
      @payment = payment
      @metadata = metadata
      @due_at = due_at unless due_at == SKIP
      @antifraud = antifraud
      @order_id = order_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      code = hash.key?('code') ? hash['code'] : nil
      amount = hash.key?('amount') ? hash['amount'] : nil
      customer_id = hash.key?('customer_id') ? hash['customer_id'] : nil
      customer = CreateCustomerRequest.from_hash(hash['customer']) if hash['customer']
      payment = CreatePaymentRequest.from_hash(hash['payment']) if hash['payment']
      metadata = hash.key?('metadata') ? hash['metadata'] : nil
      antifraud = CreateAntifraudRequest.from_hash(hash['antifraud']) if hash['antifraud']
      order_id = hash.key?('order_id') ? hash['order_id'] : nil
      due_at = if hash.key?('due_at')
                 (DateTimeHelper.from_rfc3339(hash['due_at']) if hash['due_at'])
               else
                 SKIP
               end

      # Create object from extracted values.
      CreateChargeRequest.new(code,
                              amount,
                              customer_id,
                              customer,
                              payment,
                              metadata,
                              antifraud,
                              order_id,
                              due_at)
    end

    def to_due_at
      DateTimeHelper.to_rfc3339(due_at)
    end
  end
end
