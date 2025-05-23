# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Request for updating the card from a subscription
  class UpdateSubscriptionCardRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Credit card data
    # @return [CreateCardRequest]
    attr_accessor :card

    # Credit card id
    # @return [String]
    attr_accessor :card_id

    # Business model identifier
    # @return [String]
    attr_accessor :indirect_acceptor

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['card'] = 'card'
      @_hash['card_id'] = 'card_id'
      @_hash['indirect_acceptor'] = 'indirect_acceptor'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        indirect_acceptor
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(card = nil, card_id = nil, indirect_acceptor = SKIP)
      @card = card
      @card_id = card_id
      @indirect_acceptor = indirect_acceptor unless indirect_acceptor == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      card = CreateCardRequest.from_hash(hash['card']) if hash['card']
      card_id = hash.key?('card_id') ? hash['card_id'] : nil
      indirect_acceptor =
        hash.key?('indirect_acceptor') ? hash['indirect_acceptor'] : SKIP

      # Create object from extracted values.
      UpdateSubscriptionCardRequest.new(card,
                                        card_id,
                                        indirect_acceptor)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} card: #{@card}, card_id: #{@card_id}, indirect_acceptor:"\
      " #{@indirect_acceptor}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} card: #{@card.inspect}, card_id: #{@card_id.inspect}, indirect_acceptor:"\
      " #{@indirect_acceptor.inspect}>"
    end
  end
end
