# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module PagarmeApiSdk
  # Shipping data
  class CreateShippingRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Shipping amount
    # @return [Integer]
    attr_accessor :amount

    # Description
    # @return [String]
    attr_accessor :description

    # Recipient name
    # @return [String]
    attr_accessor :recipient_name

    # Recipient phone number
    # @return [String]
    attr_accessor :recipient_phone

    # The id of the address that will be used for shipping
    # @return [String]
    attr_accessor :address_id

    # Address data
    # @return [CreateAddressRequest]
    attr_accessor :address

    # Data máxima de entrega
    # @return [DateTime]
    attr_accessor :max_delivery_date

    # Prazo estimado de entrega
    # @return [DateTime]
    attr_accessor :estimated_delivery_date

    # Shipping type
    # @return [String]
    attr_accessor :type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['description'] = 'description'
      @_hash['recipient_name'] = 'recipient_name'
      @_hash['recipient_phone'] = 'recipient_phone'
      @_hash['address_id'] = 'address_id'
      @_hash['address'] = 'address'
      @_hash['max_delivery_date'] = 'max_delivery_date'
      @_hash['estimated_delivery_date'] = 'estimated_delivery_date'
      @_hash['type'] = 'type'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        max_delivery_date
        estimated_delivery_date
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(amount = nil,
                   description = nil,
                   recipient_name = nil,
                   recipient_phone = nil,
                   address_id = nil,
                   address = nil,
                   type = nil,
                   max_delivery_date = SKIP,
                   estimated_delivery_date = SKIP)
      @amount = amount
      @description = description
      @recipient_name = recipient_name
      @recipient_phone = recipient_phone
      @address_id = address_id
      @address = address
      @max_delivery_date = max_delivery_date unless max_delivery_date == SKIP
      @estimated_delivery_date = estimated_delivery_date unless estimated_delivery_date == SKIP
      @type = type
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash.key?('amount') ? hash['amount'] : nil
      description = hash.key?('description') ? hash['description'] : nil
      recipient_name =
        hash.key?('recipient_name') ? hash['recipient_name'] : nil
      recipient_phone =
        hash.key?('recipient_phone') ? hash['recipient_phone'] : nil
      address_id = hash.key?('address_id') ? hash['address_id'] : nil
      address = CreateAddressRequest.from_hash(hash['address']) if hash['address']
      type = hash.key?('type') ? hash['type'] : nil
      max_delivery_date = if hash.key?('max_delivery_date')
                            (DateTimeHelper.from_rfc3339(hash['max_delivery_date']) if hash['max_delivery_date'])
                          else
                            SKIP
                          end
      estimated_delivery_date = if hash.key?('estimated_delivery_date')
                                  (DateTimeHelper.from_rfc3339(hash['estimated_delivery_date']) if hash['estimated_delivery_date'])
                                else
                                  SKIP
                                end

      # Create object from extracted values.
      CreateShippingRequest.new(amount,
                                description,
                                recipient_name,
                                recipient_phone,
                                address_id,
                                address,
                                type,
                                max_delivery_date,
                                estimated_delivery_date)
    end

    def to_custom_max_delivery_date
      DateTimeHelper.to_rfc3339(max_delivery_date)
    end

    def to_custom_estimated_delivery_date
      DateTimeHelper.to_rfc3339(estimated_delivery_date)
    end
  end
end
