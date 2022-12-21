# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Information about fines and interest on the "boleto" used from payment
  class CreateSubscriptionBoletoRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [CreateInterestRequest]
    attr_accessor :interest

    # TODO: Write general description for this method
    # @return [CreateFineRequest]
    attr_accessor :fine

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :max_days_to_pay_past_due

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['interest'] = 'interest'
      @_hash['fine'] = 'fine'
      @_hash['max_days_to_pay_past_due'] = 'max_days_to_pay_past_due'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        interest
        fine
        max_days_to_pay_past_due
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        max_days_to_pay_past_due
      ]
    end

    def initialize(interest = SKIP,
                   fine = SKIP,
                   max_days_to_pay_past_due = SKIP)
      @interest = interest unless interest == SKIP
      @fine = fine unless fine == SKIP
      @max_days_to_pay_past_due = max_days_to_pay_past_due unless max_days_to_pay_past_due == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      interest = CreateInterestRequest.from_hash(hash['interest']) if hash['interest']
      fine = CreateFineRequest.from_hash(hash['fine']) if hash['fine']
      max_days_to_pay_past_due =
        hash.key?('max_days_to_pay_past_due') ? hash['max_days_to_pay_past_due'] : SKIP

      # Create object from extracted values.
      CreateSubscriptionBoletoRequest.new(interest,
                                          fine,
                                          max_days_to_pay_past_due)
    end
  end
end
