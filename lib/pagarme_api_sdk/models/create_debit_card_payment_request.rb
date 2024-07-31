# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # The settings for creating a debit card payment
  class CreateDebitCardPaymentRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The text that will be shown on the debit card's statement
    # @return [String]
    attr_accessor :statement_descriptor

    # Debit card data
    # @return [CreateCardRequest]
    attr_accessor :card

    # The debit card id
    # @return [String]
    attr_accessor :card_id

    # The debit card token
    # @return [String]
    attr_accessor :card_token

    # Indicates a recurrence
    # @return [TrueClass | FalseClass]
    attr_accessor :recurrence

    # The payment authentication request
    # @return [CreatePaymentAuthenticationRequest]
    attr_accessor :authentication

    # The Debit card payment token request
    # @return [CreateCardPaymentContactlessRequest]
    attr_accessor :token

    # The Debit card payment token request
    # @return [String]
    attr_accessor :initiated_type

    # The Debit card payment token request
    # @return [String]
    attr_accessor :recurrence_model

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['statement_descriptor'] = 'statement_descriptor'
      @_hash['card'] = 'card'
      @_hash['card_id'] = 'card_id'
      @_hash['card_token'] = 'card_token'
      @_hash['recurrence'] = 'recurrence'
      @_hash['authentication'] = 'authentication'
      @_hash['token'] = 'token'
      @_hash['initiated_type'] = 'initiated_type'
      @_hash['recurrence_model'] = 'recurrence_model'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        statement_descriptor
        card
        card_id
        card_token
        recurrence
        authentication
        token
        initiated_type
        recurrence_model
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(statement_descriptor = SKIP, card = SKIP, card_id = SKIP,
                   card_token = SKIP, recurrence = SKIP, authentication = SKIP,
                   token = SKIP, initiated_type = SKIP, recurrence_model = SKIP)
      @statement_descriptor = statement_descriptor unless statement_descriptor == SKIP
      @card = card unless card == SKIP
      @card_id = card_id unless card_id == SKIP
      @card_token = card_token unless card_token == SKIP
      @recurrence = recurrence unless recurrence == SKIP
      @authentication = authentication unless authentication == SKIP
      @token = token unless token == SKIP
      @initiated_type = initiated_type unless initiated_type == SKIP
      @recurrence_model = recurrence_model unless recurrence_model == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      statement_descriptor =
        hash.key?('statement_descriptor') ? hash['statement_descriptor'] : SKIP
      card = CreateCardRequest.from_hash(hash['card']) if hash['card']
      card_id = hash.key?('card_id') ? hash['card_id'] : SKIP
      card_token = hash.key?('card_token') ? hash['card_token'] : SKIP
      recurrence = hash.key?('recurrence') ? hash['recurrence'] : SKIP
      authentication = CreatePaymentAuthenticationRequest.from_hash(hash['authentication']) if
        hash['authentication']
      token = CreateCardPaymentContactlessRequest.from_hash(hash['token']) if hash['token']
      initiated_type =
        hash.key?('initiated_type') ? hash['initiated_type'] : SKIP
      recurrence_model =
        hash.key?('recurrence_model') ? hash['recurrence_model'] : SKIP

      # Create object from extracted values.
      CreateDebitCardPaymentRequest.new(statement_descriptor,
                                        card,
                                        card_id,
                                        card_token,
                                        recurrence,
                                        authentication,
                                        token,
                                        initiated_type,
                                        recurrence_model)
    end
  end
end
