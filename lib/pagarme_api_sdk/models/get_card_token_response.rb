# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Card token data
  class GetCardTokenResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :last_four_digits

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :holder_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :holder_document

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :exp_month

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :exp_year

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :brand

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :label

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['last_four_digits'] = 'last_four_digits'
      @_hash['holder_name'] = 'holder_name'
      @_hash['holder_document'] = 'holder_document'
      @_hash['exp_month'] = 'exp_month'
      @_hash['exp_year'] = 'exp_year'
      @_hash['brand'] = 'brand'
      @_hash['type'] = 'type'
      @_hash['label'] = 'label'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        last_four_digits
        holder_name
        holder_document
        exp_month
        exp_year
        brand
        type
        label
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        last_four_digits
        holder_name
        holder_document
        exp_month
        exp_year
        brand
        type
        label
      ]
    end

    def initialize(last_four_digits = SKIP,
                   holder_name = SKIP,
                   holder_document = SKIP,
                   exp_month = SKIP,
                   exp_year = SKIP,
                   brand = SKIP,
                   type = SKIP,
                   label = SKIP)
      @last_four_digits = last_four_digits unless last_four_digits == SKIP
      @holder_name = holder_name unless holder_name == SKIP
      @holder_document = holder_document unless holder_document == SKIP
      @exp_month = exp_month unless exp_month == SKIP
      @exp_year = exp_year unless exp_year == SKIP
      @brand = brand unless brand == SKIP
      @type = type unless type == SKIP
      @label = label unless label == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      last_four_digits =
        hash.key?('last_four_digits') ? hash['last_four_digits'] : SKIP
      holder_name = hash.key?('holder_name') ? hash['holder_name'] : SKIP
      holder_document =
        hash.key?('holder_document') ? hash['holder_document'] : SKIP
      exp_month = hash.key?('exp_month') ? hash['exp_month'] : SKIP
      exp_year = hash.key?('exp_year') ? hash['exp_year'] : SKIP
      brand = hash.key?('brand') ? hash['brand'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      label = hash.key?('label') ? hash['label'] : SKIP

      # Create object from extracted values.
      GetCardTokenResponse.new(last_four_digits,
                               holder_name,
                               holder_document,
                               exp_month,
                               exp_year,
                               brand,
                               type,
                               label)
    end
  end
end
