# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Card token data
  class CreateCardTokenRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Credit card number
    # @return [String]
    attr_accessor :number

    # Holder name, as written on the card
    # @return [String]
    attr_accessor :holder_name

    # The expiration month
    # @return [Integer]
    attr_accessor :exp_month

    # The expiration year, that can be informed with 2 or 4 digits
    # @return [Integer]
    attr_accessor :exp_year

    # The card's security code
    # @return [String]
    attr_accessor :cvv

    # Card brand
    # @return [String]
    attr_accessor :brand

    # Card brand
    # @return [String]
    attr_accessor :label

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['number'] = 'number'
      @_hash['holder_name'] = 'holder_name'
      @_hash['exp_month'] = 'exp_month'
      @_hash['exp_year'] = 'exp_year'
      @_hash['cvv'] = 'cvv'
      @_hash['brand'] = 'brand'
      @_hash['label'] = 'label'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(number = nil, holder_name = nil, exp_month = nil,
                   exp_year = nil, cvv = nil, brand = nil, label = nil)
      @number = number
      @holder_name = holder_name
      @exp_month = exp_month
      @exp_year = exp_year
      @cvv = cvv
      @brand = brand
      @label = label
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      number = hash.key?('number') ? hash['number'] : nil
      holder_name = hash.key?('holder_name') ? hash['holder_name'] : nil
      exp_month = hash.key?('exp_month') ? hash['exp_month'] : nil
      exp_year = hash.key?('exp_year') ? hash['exp_year'] : nil
      cvv = hash.key?('cvv') ? hash['cvv'] : nil
      brand = hash.key?('brand') ? hash['brand'] : nil
      label = hash.key?('label') ? hash['label'] : nil

      # Create object from extracted values.
      CreateCardTokenRequest.new(number,
                                 holder_name,
                                 exp_month,
                                 exp_year,
                                 cvv,
                                 brand,
                                 label)
    end
  end
end
