# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Request for updating a subscription's payment method
  class UpdateSubscriptionPaymentMethodRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The new payment method
    # @return [String]
    attr_accessor :payment_method

    # Card id
    # @return [String]
    attr_accessor :card_id

    # Card data
    # @return [CreateCardRequest]
    attr_accessor :card

    # The Card Token
    # @return [String]
    attr_accessor :card_token

    # Information about fines and interest on the "boleto" used from payment
    # @return [CreateSubscriptionBoletoRequest]
    attr_accessor :boleto

    # Business model identifier
    # @return [String]
    attr_accessor :indirect_acceptor

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payment_method'] = 'payment_method'
      @_hash['card_id'] = 'card_id'
      @_hash['card'] = 'card'
      @_hash['card_token'] = 'card_token'
      @_hash['boleto'] = 'boleto'
      @_hash['indirect_acceptor'] = 'indirect_acceptor'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        card_token
        boleto
        indirect_acceptor
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        indirect_acceptor
      ]
    end

    def initialize(payment_method = nil, card_id = nil, card = nil,
                   card_token = SKIP, boleto = SKIP, indirect_acceptor = SKIP)
      @payment_method = payment_method
      @card_id = card_id
      @card = card
      @card_token = card_token unless card_token == SKIP
      @boleto = boleto unless boleto == SKIP
      @indirect_acceptor = indirect_acceptor unless indirect_acceptor == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      payment_method =
        hash.key?('payment_method') ? hash['payment_method'] : nil
      card_id = hash.key?('card_id') ? hash['card_id'] : nil
      card = CreateCardRequest.from_hash(hash['card']) if hash['card']
      card_token = hash.key?('card_token') ? hash['card_token'] : SKIP
      boleto = CreateSubscriptionBoletoRequest.from_hash(hash['boleto']) if hash['boleto']
      indirect_acceptor =
        hash.key?('indirect_acceptor') ? hash['indirect_acceptor'] : SKIP

      # Create object from extracted values.
      UpdateSubscriptionPaymentMethodRequest.new(payment_method,
                                                 card_id,
                                                 card,
                                                 card_token,
                                                 boleto,
                                                 indirect_acceptor)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} payment_method: #{@payment_method}, card_id: #{@card_id}, card: #{@card},"\
      " card_token: #{@card_token}, boleto: #{@boleto}, indirect_acceptor: #{@indirect_acceptor}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} payment_method: #{@payment_method.inspect}, card_id: #{@card_id.inspect},"\
      " card: #{@card.inspect}, card_token: #{@card_token.inspect}, boleto: #{@boleto.inspect},"\
      " indirect_acceptor: #{@indirect_acceptor.inspect}>"
    end
  end
end
