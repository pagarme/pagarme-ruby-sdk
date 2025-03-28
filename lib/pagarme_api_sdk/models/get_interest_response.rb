# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Interest Response
  class GetInterestResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Days
    # @return [Integer]
    attr_accessor :days

    # Type
    # @return [String]
    attr_accessor :type

    # Amount
    # @return [Integer]
    attr_accessor :amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['days'] = 'days'
      @_hash['type'] = 'type'
      @_hash['amount'] = 'amount'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        days
        type
        amount
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        days
        type
        amount
      ]
    end

    def initialize(days = SKIP, type = SKIP, amount = SKIP)
      @days = days unless days == SKIP
      @type = type unless type == SKIP
      @amount = amount unless amount == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      days = hash.key?('days') ? hash['days'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP

      # Create object from extracted values.
      GetInterestResponse.new(days,
                              type,
                              amount)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} days: #{@days}, type: #{@type}, amount: #{@amount}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} days: #{@days.inspect}, type: #{@type.inspect}, amount:"\
      " #{@amount.inspect}>"
    end
  end
end
