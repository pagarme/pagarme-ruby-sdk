# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Response object for getting a pricing scheme
  class GetPricingSchemeResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :price

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :scheme_type

    # TODO: Write general description for this method
    # @return [Array[GetPriceBracketResponse]]
    attr_accessor :price_brackets

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :minimum_price

    # percentual value used in pricing_scheme Percent
    # @return [Float]
    attr_accessor :percentage

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['price'] = 'price'
      @_hash['scheme_type'] = 'scheme_type'
      @_hash['price_brackets'] = 'price_brackets'
      @_hash['minimum_price'] = 'minimum_price'
      @_hash['percentage'] = 'percentage'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        price
        scheme_type
        price_brackets
        minimum_price
        percentage
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        price
        scheme_type
        price_brackets
        minimum_price
        percentage
      ]
    end

    def initialize(price = SKIP, scheme_type = SKIP, price_brackets = SKIP,
                   minimum_price = SKIP, percentage = SKIP)
      @price = price unless price == SKIP
      @scheme_type = scheme_type unless scheme_type == SKIP
      @price_brackets = price_brackets unless price_brackets == SKIP
      @minimum_price = minimum_price unless minimum_price == SKIP
      @percentage = percentage unless percentage == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      price = hash.key?('price') ? hash['price'] : SKIP
      scheme_type = hash.key?('scheme_type') ? hash['scheme_type'] : SKIP
      # Parameter is an array, so we need to iterate through it
      price_brackets = nil
      unless hash['price_brackets'].nil?
        price_brackets = []
        hash['price_brackets'].each do |structure|
          price_brackets << (GetPriceBracketResponse.from_hash(structure) if structure)
        end
      end

      price_brackets = SKIP unless hash.key?('price_brackets')
      minimum_price = hash.key?('minimum_price') ? hash['minimum_price'] : SKIP
      percentage = hash.key?('percentage') ? hash['percentage'] : SKIP

      # Create object from extracted values.
      GetPricingSchemeResponse.new(price,
                                   scheme_type,
                                   price_brackets,
                                   minimum_price,
                                   percentage)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} price: #{@price}, scheme_type: #{@scheme_type}, price_brackets:"\
      " #{@price_brackets}, minimum_price: #{@minimum_price}, percentage: #{@percentage}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} price: #{@price.inspect}, scheme_type: #{@scheme_type.inspect},"\
      " price_brackets: #{@price_brackets.inspect}, minimum_price: #{@minimum_price.inspect},"\
      " percentage: #{@percentage.inspect}>"
    end
  end
end
