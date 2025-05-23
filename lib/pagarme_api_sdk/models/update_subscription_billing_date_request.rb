# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module PagarmeApiSdk
  # Request for updating the due date from a subscription
  class UpdateSubscriptionBillingDateRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The date when the next subscription billing must occur
    # @return [DateTime]
    attr_accessor :next_billing_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['next_billing_at'] = 'next_billing_at'
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

    def initialize(next_billing_at = nil)
      @next_billing_at = next_billing_at
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      next_billing_at = if hash.key?('next_billing_at')
                          (DateTimeHelper.from_rfc3339(hash['next_billing_at']) if hash['next_billing_at'])
                        end

      # Create object from extracted values.
      UpdateSubscriptionBillingDateRequest.new(next_billing_at)
    end

    def to_custom_next_billing_at
      DateTimeHelper.to_rfc3339(next_billing_at)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} next_billing_at: #{@next_billing_at}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} next_billing_at: #{@next_billing_at.inspect}>"
    end
  end
end
