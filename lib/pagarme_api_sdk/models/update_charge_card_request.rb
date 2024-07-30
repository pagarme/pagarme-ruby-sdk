# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Request for updating card data
  class UpdateChargeCardRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Indicates if the subscriptions using this card must also be updated
    # @return [TrueClass | FalseClass]
    attr_accessor :update_subscription

    # Card id
    # @return [String]
    attr_accessor :card_id

    # Card data
    # @return [CreateCardRequest]
    attr_accessor :card

    # Indicates a recurrence
    # @return [TrueClass | FalseClass]
    attr_accessor :recurrence

    # Indicates a recurrence
    # @return [String]
    attr_accessor :initiated_type

    # Indicates a recurrence
    # @return [String]
    attr_accessor :recurrence_model

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['update_subscription'] = 'update_subscription'
      @_hash['card_id'] = 'card_id'
      @_hash['card'] = 'card'
      @_hash['recurrence'] = 'recurrence'
      @_hash['initiated_type'] = 'initiated_type'
      @_hash['recurrence_model'] = 'recurrence_model'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        initiated_type
        recurrence_model
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(update_subscription = nil, card_id = nil, card = nil,
                   recurrence = nil, initiated_type = SKIP,
                   recurrence_model = SKIP)
      @update_subscription = update_subscription
      @card_id = card_id
      @card = card
      @recurrence = recurrence
      @initiated_type = initiated_type unless initiated_type == SKIP
      @recurrence_model = recurrence_model unless recurrence_model == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      update_subscription =
        hash.key?('update_subscription') ? hash['update_subscription'] : nil
      card_id = hash.key?('card_id') ? hash['card_id'] : nil
      card = CreateCardRequest.from_hash(hash['card']) if hash['card']
      recurrence = hash.key?('recurrence') ? hash['recurrence'] : nil
      initiated_type =
        hash.key?('initiated_type') ? hash['initiated_type'] : SKIP
      recurrence_model =
        hash.key?('recurrence_model') ? hash['recurrence_model'] : SKIP

      # Create object from extracted values.
      UpdateChargeCardRequest.new(update_subscription,
                                  card_id,
                                  card,
                                  recurrence,
                                  initiated_type,
                                  recurrence_model)
    end
  end
end
