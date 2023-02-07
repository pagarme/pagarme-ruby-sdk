# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # GetSubscriptionSplitResponse Model.
  class GetSubscriptionSplitResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Defines if the split is enabled
    # @return [TrueClass|FalseClass]
    attr_accessor :enabled

    # Split
    # @return [List of GetSplitResponse]
    attr_accessor :rules

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['enabled'] = 'enabled'
      @_hash['rules'] = 'rules'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        enabled
        rules
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        enabled
        rules
      ]
    end

    def initialize(enabled = SKIP,
                   rules = SKIP)
      @enabled = enabled unless enabled == SKIP
      @rules = rules unless rules == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      enabled = hash.key?('enabled') ? hash['enabled'] : SKIP
      # Parameter is an array, so we need to iterate through it
      rules = nil
      unless hash['rules'].nil?
        rules = []
        hash['rules'].each do |structure|
          rules << (GetSplitResponse.from_hash(structure) if structure)
        end
      end

      rules = SKIP unless hash.key?('rules')

      # Create object from extracted values.
      GetSubscriptionSplitResponse.new(enabled,
                                       rules)
    end
  end
end
